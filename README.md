# ansible-LogExAnWebApp-deployment

- sample ansible deployment playbook file written with setup and teardown for demo purpose

## Steps to execute

- open wsl in windows or open a terminal in linux and run **./test.sh** script from the root folder

![](https://github.com/Palani-SN/ansible-LogExAnWebApp-deployment/blob/main/images/Root_Folder_Path.JPG?raw=true)

- enter the **password** for the BECOME password, output of the **./test.sh** is shown below, 
when the screen shows up **go to http://localhost:5000/, Enter to unmount the docker after manual verification:**, 
you can visit the url, once you want to close the container and clean up, press enter at the terminal

```terminal

wsl2_user@DESKTOP-TO1N415:/mnt/f/GitRepos/ansible-LogExAnWebApp-deployment$ ./test.sh
BECOME password:

PLAY [Provisioning docker container] ***********************************************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************************************************
ok: [127.0.0.1]

TASK [setup - docker container with OpenSSH & Python Interpreter] ******************************************************************************************************
changed: [127.0.0.1]

TASK [Wait 300 seconds for port 22 to become open and contain "OpenSSH"] ***********************************************************************************************
ok: [127.0.0.1]

PLAY [User definitions] ************************************************************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************************************************
[WARNING]: Platform linux on host vm01 is using the discovered Python interpreter at /usr/bin/python3.10, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.12/reference_appendices/interpreter_discovery.html for more information.
ok: [vm01]

TASK [create a new user] ***********************************************************************************************************************************************
changed: [vm01]

PLAY [Connection & Version Check] **************************************************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************************************************
ok: [vm01]

TASK [Ping my hosts] ***************************************************************************************************************************************************
ok: [vm01]

TASK [Print message] ***************************************************************************************************************************************************
ok: [vm01] => {
    "msg": "Hello world"
}

TASK [Print version] ***************************************************************************************************************************************************
changed: [vm01]

TASK [ansible.builtin.debug] *******************************************************************************************************************************************
ok: [vm01] => {
    "msg": [
        "NAME=\"Alpine Linux\"",
        "ID=alpine",
        "VERSION_ID=3.16.2",
        "PRETTY_NAME=\"Alpine Linux v3.16\"",
        "HOME_URL=\"https://alpinelinux.org/\"",
        "BUG_REPORT_URL=\"https://gitlab.alpinelinux.org/alpine/aports/-/issues\""
    ]
}

PLAY [project setup] ***************************************************************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************************************************
ok: [vm01]

TASK [copy files] ******************************************************************************************************************************************************
changed: [vm01]

PLAY [project environment setup] ***************************************************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************************************************
ok: [vm01]

TASK [installation of libraries from PYPI] *****************************************************************************************************************************
changed: [vm01]

TASK [ansible.builtin.debug] *******************************************************************************************************************************************
ok: [vm01] => {
    "msg": [
        "mode of 'install.sh' changed to 0755 (rwxr-xr-x)",
        "Collecting fastapi",
        "  Downloading fastapi-0.85.1-py3-none-any.whl (55 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 55.4/55.4 kB 222.6 kB/s eta 0:00:00",
        "Collecting pydantic!=1.7,!=1.7.1,!=1.7.2,!=1.7.3,!=1.8,!=1.8.1,<2.0.0,>=1.6.2",
        "  Downloading pydantic-1.10.2-cp310-cp310-musllinux_1_1_x86_64.whl (12.9 MB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 12.9/12.9 MB 1.9 MB/s eta 0:00:00",
        "Collecting starlette==0.20.4",
        "  Downloading starlette-0.20.4-py3-none-any.whl (63 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 63.6/63.6 kB 437.7 kB/s eta 0:00:00",
        "Collecting anyio<5,>=3.4.0",
        "  Downloading anyio-3.6.2-py3-none-any.whl (80 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 80.6/80.6 kB 683.8 kB/s eta 0:00:00",
        "Collecting typing-extensions>=4.1.0",
        "  Downloading typing_extensions-4.4.0-py3-none-any.whl (26 kB)",
        "Collecting idna>=2.8",
        "  Downloading idna-3.4-py3-none-any.whl (61 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.5/61.5 kB 465.6 kB/s eta 0:00:00",
        "Collecting sniffio>=1.1",
        "  Downloading sniffio-1.3.0-py3-none-any.whl (10 kB)",
        "Installing collected packages: typing-extensions, sniffio, idna, pydantic, anyio, starlette, fastapi",
        "Successfully installed anyio-3.6.2 fastapi-0.85.1 idna-3.4 pydantic-1.10.2 sniffio-1.3.0 starlette-0.20.4 typing-extensions-4.4.0",
        "Collecting Flask",
        "  Downloading Flask-2.2.2-py3-none-any.whl (101 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 101.5/101.5 kB 724.3 kB/s eta 0:00:00",
        "Collecting Jinja2>=3.0",
        "  Downloading Jinja2-3.1.2-py3-none-any.whl (133 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 133.1/133.1 kB 1.7 MB/s eta 0:00:00",
        "Collecting itsdangerous>=2.0",
        "  Downloading itsdangerous-2.1.2-py3-none-any.whl (15 kB)",
        "Collecting Werkzeug>=2.2.2",
        "  Downloading Werkzeug-2.2.2-py3-none-any.whl (232 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 232.7/232.7 kB 1.7 MB/s eta 0:00:00",
        "Collecting click>=8.0",
        "  Downloading click-8.1.3-py3-none-any.whl (96 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 96.6/96.6 kB 1.1 MB/s eta 0:00:00",
        "Collecting MarkupSafe>=2.0",
        "  Downloading MarkupSafe-2.1.1-cp310-cp310-musllinux_1_1_x86_64.whl (29 kB)",
        "Installing collected packages: MarkupSafe, itsdangerous, click, Werkzeug, Jinja2, Flask",
        "Successfully installed Flask-2.2.2 Jinja2-3.1.2 MarkupSafe-2.1.1 Werkzeug-2.2.2 click-8.1.3 itsdangerous-2.1.2",
        "Collecting uvicorn",
        "  Downloading uvicorn-0.19.0-py3-none-any.whl (56 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 56.6/56.6 kB 552.6 kB/s eta 0:00:00",
        "Collecting h11>=0.8",
        "  Downloading h11-0.14.0-py3-none-any.whl (58 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 58.3/58.3 kB 666.2 kB/s eta 0:00:00",
        "Requirement already satisfied: click>=7.0 in /usr/lib/python3.10/site-packages (from uvicorn) (8.1.3)",
        "Installing collected packages: h11, uvicorn",
        "Successfully installed h11-0.14.0 uvicorn-0.19.0",
        "(1/8) Installing py3-six (1.16.0-r1)",
        "(2/8) Installing py3-dateutil (2.8.2-r1)",
        "(3/8) Installing libquadmath (11.2.1_git20220219-r2)",
        "(4/8) Installing libgfortran (11.2.1_git20220219-r2)",
        "(5/8) Installing openblas (0.3.20-r0)",
        "(6/8) Installing py3-numpy (1.22.3-r0)",
        "(7/8) Installing py3-tz (2022.1-r0)",
        "(8/8) Installing py3-pandas (1.3.2-r2)",
        "OK: 179 MiB in 44 packages",
        "Collecting lark-parser",
        "  Downloading lark_parser-0.12.0-py2.py3-none-any.whl (103 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 103.5/103.5 kB 1.1 MB/s eta 0:00:00",
        "Installing collected packages: lark-parser",
        "Successfully installed lark-parser-0.12.0",
        "Collecting LogExAn",
        "  Downloading LogExAn-1.0.0-py3-none-any.whl (21 kB)",
        "Installing collected packages: LogExAn",
        "Successfully installed LogExAn-1.0.0",
        "OK: 179 MiB in 44 packages",
        "(1/44) Installing libxau (1.0.9-r0)",
        "(2/44) Installing libxdmcp (1.1.3-r0)",
        "(3/44) Installing libxcb (1.15-r0)",
        "(4/44) Installing libx11 (1.8-r0)",
        "(5/44) Installing libxext (1.3.4-r0)",
        "(6/44) Installing libxrender (0.9.10-r3)",
        "(7/44) Installing brotli-libs (1.0.9-r6)",
        "(8/44) Installing libpng (1.6.37-r1)",
        "(9/44) Installing freetype (2.12.1-r0)",
        "(10/44) Installing fontconfig (2.14.0-r0)",
        "(11/44) Installing pixman (0.40.0-r3)",
        "(12/44) Installing cairo (1.17.4-r2)",
        "(13/44) Installing py3-cairo (1.20.1-r1)",
        "(14/44) Installing py3-certifi (2021.10.8-r0)",
        "(15/44) Installing py3-cycler (0.10.0-r8)",
        "(16/44) Installing libgpg-error (1.45-r0)",
        "(17/44) Installing libgcrypt (1.10.1-r0)",
        "(18/44) Installing libxml2 (2.9.14-r2)",
        "(19/44) Installing libxslt (1.1.35-r0)",
        "(20/44) Installing py3-lxml (4.8.0-r0)",
        "(21/44) Installing py3-appdirs (1.4.4-r3)",
        "(22/44) Installing py3-fs (2.4.16-r0)",
        "(23/44) Installing cython (0.29.24-r1)",
        "(24/44) Installing pkgconf (1.8.0-r1)",
        "(25/44) Installing python3-dev (3.10.5-r0)",
        "(26/44) Installing py3-fonttools (4.33.0-r0)",
        "(27/44) Installing py3-kiwisolver (1.2.0-r3)",
        "(28/44) Installing py3-parsing (2.4.7-r3)",
        "(29/44) Installing py3-packaging (21.3-r0)",
        "(30/44) Installing py3-olefile (0.46-r6)",
        "(31/44) Installing libimagequant (2.16.0-r0)",
        "(32/44) Installing libjpeg-turbo (2.1.3-r1)",
        "(33/44) Installing lcms2 (2.13.1-r0)",
        "(34/44) Installing openjpeg (2.5.0-r0)",
        "(35/44) Installing libwebp (1.2.3-r0)",
        "(36/44) Installing zstd-libs (1.5.2-r1)",
        "(37/44) Installing tiff (4.4.0-r0)",
        "(38/44) Installing py3-pillow (9.1.1-r0)",
        "(39/44) Installing tcl (8.6.12-r1)",
        "(40/44) Installing libxft (2.3.4-r0)",
        "(41/44) Installing tk (8.6.12-r0)",
        "(42/44) Installing python3-tkinter (3.10.4-r0)",
        "(43/44) Installing qhull (2020.2-r1)",
        "(44/44) Installing py3-matplotlib (3.5.2-r0)",
        "Executing busybox-1.35.0-r17.trigger",
        "OK: 296 MiB in 88 packages",
        "Collecting gunicorn",
        "  Downloading gunicorn-20.1.0-py3-none-any.whl (79 kB)",
        "     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 79.5/79.5 kB 693.5 kB/s eta 0:00:00",
        "Requirement already satisfied: setuptools>=3.0 in /usr/lib/python3.10/site-packages (from gunicorn) (65.5.0)",
        "Installing collected packages: gunicorn",
        "Successfully installed gunicorn-20.1.0"
    ]
}

TASK [run API] *********************************************************************************************************************************************************
changed: [vm01]

TASK [ansible.builtin.debug] *******************************************************************************************************************************************
ok: [vm01] => {
    "msg": [
        "mode of 'run_fastapi.sh' changed to 0755 (rwxr-xr-x)",
        "FastAPI started at http://127.0.0.1:8000/ (BACKEND - local to the container)"
    ]
}

TASK [run UI] **********************************************************************************************************************************************************
changed: [vm01]

TASK [ansible.builtin.debug] *******************************************************************************************************************************************
ok: [vm01] => {
    "msg": [
        "mode of 'run_flask.sh' changed to 0755 (rwxr-xr-x)",
        "FastAPI started at http://localhost:5000/ (FRONTEND - connected to host via bridge network)"
    ]
}

TASK [run Status] ******************************************************************************************************************************************************
changed: [vm01]

TASK [ansible.builtin.debug] *******************************************************************************************************************************************
ok: [vm01] => {
    "msg": [
        "Active Internet connections (servers and established)",
        "Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    ",
        "tcp        0      0 127.0.0.1:8000          0.0.0.0:*               LISTEN      1164/python",
        "tcp        0      0 0.0.0.0:5000            0.0.0.0:*               LISTEN      1200/python",
        "tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1/sshd -D -e [liste",
        "tcp        0      0 172.17.0.2:22           172.17.0.1:33980        ESTABLISHED 11/sshd: openssh [p",
        "tcp        0      0 :::22                   :::*                    LISTEN      1/sshd -D -e [liste",
        "Active UNIX domain sockets (servers and established)",
        "Proto RefCnt Flags       Type       State         I-Node PID/Program name    Path",
        "unix  2      [ ]         DGRAM                     72867 1219/python3.10     ",
        "unix  3      [ ]         STREAM     CONNECTED      72854 1167/python         ",
        "unix  3      [ ]         STREAM     CONNECTED      72865 1178/python         ",
        "unix  3      [ ]         STREAM     CONNECTED      72617 1169/python         ",
        "unix  3      [ ]         STREAM     CONNECTED      72853 1167/python         ",
        "unix  3      [ ]         STREAM     CONNECTED      38179 11/sshd: openssh [p ",
        "unix  3      [ ]         STREAM     CONNECTED      72618 1169/python         ",
        "unix  2      [ ]         STREAM     CONNECTED      40037 11/sshd: openssh [p ",
        "unix  3      [ ]         STREAM     CONNECTED      72866 1178/python         ",
        "unix  3      [ ]         STREAM     CONNECTED      38178 -                   ",
        "unix  3      [ ]         STREAM     CONNECTED      70623 1179/python         ",
        "unix  3      [ ]         STREAM     CONNECTED      70622 1179/python         "
    ]
}

PLAY [project open with url] *******************************************************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************************************************
ok: [127.0.0.1]

TASK [Prompt for docker unmount] ***************************************************************************************************************************************
[Prompt for docker unmount]
go to http://localhost:5000/, Enter to unmount the docker after manual verification:
^Mok: [127.0.0.1]

PLAY [Removing docker container] ***************************************************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************************************************
ok: [127.0.0.1]

TASK [teardown - docker container with OpenSSH & Python Interpreter] ***************************************************************************************************
changed: [127.0.0.1]

TASK [Waits for port 22 of any IP to close active connections, don't start checking for 10 seconds] ********************************************************************
ok: [127.0.0.1]

PLAY RECAP *************************************************************************************************************************************************************
127.0.0.1                  : ok=8    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
vm01                       : ok=18   changed=7    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

wsl2_user@DESKTOP-TO1N415:/mnt/f/GitRepos/ansible-LogExAnWebApp-deployment$

```

- The deployment uses setup & teardown scripts for manually provisioning and unmounting docker container

	- example usage : ./setup.sh & ./teardown.sh
	
	![](https://github.com/Palani-SN/ansible-LogExAnWebApp-deployment/blob/main/images/Setup_Teardown_Example.JPG?raw=true)
	