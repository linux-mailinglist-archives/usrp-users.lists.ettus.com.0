Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7553718C453
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 01:43:51 +0100 (CET)
Received: from [::1] (port=44968 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF5lO-00047g-1K; Thu, 19 Mar 2020 20:43:50 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:35817)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <b4ss3k@gmail.com>) id 1jF5lK-0003tb-91
 for USRP-users@lists.ettus.com; Thu, 19 Mar 2020 20:43:46 -0400
Received: by mail-lf1-f65.google.com with SMTP id m15so3210285lfp.2
 for <USRP-users@lists.ettus.com>; Thu, 19 Mar 2020 17:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9e4WgcvO/l6e1sQPd1XDOdX8Hm+xFe7mAQH02dbdj8Y=;
 b=sdJLBJ+OIpo6VFpxdiWWWBODdSxl9Nrbc4zWAS3+CQTEAZoMoCQ/alJlSsmiMntDor
 LsJhW05p/efvbq837+cDHueBqwr+Sz6Vrn0cGyXAINc/8RWoWg1Fup+BfZZpIUxstlDE
 huLnbtvoK15c+Au+xADjrKyZmeu1ZihtODHHbf+OFwFyTNWwa/bgOxWdglKvBZUwUU8g
 WuDqTXHS4sJnKCAInwkcxFWuVy8CB0pA6qij4/Zq3ER395rvMzvzTsYtROJnYhe6zMwE
 /4ZQUG3jlhpa1bwj3q8cf4mgyuZLjBl4wiIEcU4PVyXNlvAPvAoyJr9zmITkBRa5E2dV
 JdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9e4WgcvO/l6e1sQPd1XDOdX8Hm+xFe7mAQH02dbdj8Y=;
 b=t+5lgUlGhVyw8wRCDyY/rTDhlocQ+2qGd8vp2E/TvkS0/OPocqP3JY9mDAieun3PVg
 q3zkBP4OP0VH4SmexlkKbtz+fL7Q9p2a75YIUcJHwCjOUekvCAYnXpZS8pyhJGLJ+lIU
 E0UKvwhrELP5c7cvtrvKwV396tOltbSQcLWmocgsudZ9Wj2FhW4be1q/+CX+mG9ljPQB
 DakuYYCzu2W7F5rZbHrYZAAEOUXUTZqTmxXDbKvPxPaOUOq7Hp43TOH8k7YJsXF7d2Du
 1yGk68M3SHOBC07bEN2xk5FQcLblZhM7muirIM57zEmQFslkC3/l24DL3hskIdhVQrW1
 w5Dg==
X-Gm-Message-State: ANhLgQ2JM/E2Lc4+PhvBhxcmpq61TY8SJDPtg7SD4yDJVJ9yY9h78Oel
 ovQ4rLjfFoyxY6yQalbA66u6rLkX7xyWqhKjPNA=
X-Google-Smtp-Source: ADFU+vtyV7y/R1SQkQmWH5mjP2ohDt59rmW6IiO9MdYVNart0DbcxdJZH1+jyFRoIfQEtRZAC3xsO8v7AiWEZ8dQZ90=
X-Received: by 2002:a19:c511:: with SMTP id w17mr3458593lfe.119.1584664984980; 
 Thu, 19 Mar 2020 17:43:04 -0700 (PDT)
MIME-Version: 1.0
References: <CACcka+344PO4uhAemdNLmEwGw+sGucMiXPuRkzFcY6ikwegU7g@mail.gmail.com>
 <4cf13326-747a-1330-807f-da552be3b714@ettus.com>
In-Reply-To: <4cf13326-747a-1330-807f-da552be3b714@ettus.com>
Date: Thu, 19 Mar 2020 20:42:53 -0400
Message-ID: <CACcka+1CygH+Ey_vShR8+oXs-sEsaEN5+o4dj20BD9psgGh7gw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] UHD SSL Error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Basse Ang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Basse Ang <b4ss3k@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============1749886992870527047=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1749886992870527047==
Content-Type: multipart/alternative; boundary="00000000000084922705a13e918c"

--00000000000084922705a13e918c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi Marcus,

Thank you for your reply.

this is the output:

Please run:

 "/usr/lib/uhd/utils/uhd_images_downloader.py"
No UHD Devices Found
oai@oai:~$ sudo /usr/lib/uhd/utils/uhd_images_downloader.py
[INFO] Images destination: /usr/share/uhd/images
[INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
Creating an empty one.
[ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510:
error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify
failed
You can run this again with the '--verbose' flag to see more information

If the problem persists, please email the output to: support@ettus.com
*oai@oai:~$  echo "http_proxy ${http_proxy} https_proxy ${https_proxy}"*
http_proxy  https_proxy

*oai@oai:~$  /usr/lib/uhd/utils/uhd_images_downloader.py --help*
usage: uhd_images_downloader.py [-h] [-t TYPES] [-i INSTALL_LOCATION]
                                [-m MANIFEST_LOCATION] [-I
INVENTORY_LOCATION]
                                [-l] [--url-only] [--buffer-size
BUFFER_SIZE]
                                [--download-limit DOWNLOAD_LIMIT]
                                [--http-proxy HTTP_PROXY] [-b BASE_URL] [-k=
]
                                [-T] [-y] [-n] [--refetch] [-V] [-q] [-v]

optional arguments:
  -h, --help            show this help message and exit
  -t TYPES, --types TYPES
                        RegEx to select image sets from the manifest file.
                        (default: None)
  -i INSTALL_LOCATION, --install-location INSTALL_LOCATION
                        Set custom install location for images (default:
None)
  -m MANIFEST_LOCATION, --manifest-location MANIFEST_LOCATION
                        Set custom location for the manifest file (default:
)
  -I INVENTORY_LOCATION, --inventory-location INVENTORY_LOCATION
                        Set custom location for the inventory file
(default: )
  -l, --list-targets    Print targets in the manifest file to stdout, and
                        exit. To get relative paths only, specify an empty
                        base URL (-b ''). (default: False)
  --url-only            With -l, only print the URLs, nothing else.
(default:
                        False)
  --buffer-size BUFFER_SIZE
                        Set download buffer size (default: 8192)
  --download-limit DOWNLOAD_LIMIT
                        Set threshold for download limits. Any download
larger
                        than this will require approval, either
interactively,
                        or by providing --yes. (default: 104857600)
  --http-proxy HTTP_PROXY
                        Specify HTTP proxy in the format
                        http://user:pass@1.2.3.4:port If this this option i=
s
                        not given, the environment variable HTTP_PROXY can
                        also be used to specify a proxy. (default: None)
  -b BASE_URL, --base-url BASE_URL
                        Set base URL for images download location (default:
                        http://files.ettus.com/binaries/cache/)
  -k, --keep            Keep the downloaded images archives in the image
                        directory (default: False)
  -T, --test            Verify the downloaded archives before extracting
them
                        (default: False)
  -y, --yes             Answer all questions with 'yes' (for scripting
                        purposes). (default: False)
  -n, --dry-run         Print selected target without actually downloading
                        them. (default: False)
  --refetch             Ignore the inventory file and download all images.
                        (default: False)
  -V, --version         show program's version number and exit
  -q, --quiet           Decrease verbosity level (default: 0)
  -v, --verbose         Increase verbosity level (default: 0)

*oai@oai:~$  /usr/lib/uhd/utils/uhd_images_downloader.py -V*
3.14.1.1-release

regards
Bass

On Thu, Mar 19, 2020 at 1:41 PM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Hi Basse,
>
> knowing our downloader, this is very likely a problem on your side: Is
> it possible you have a HTTP proxy set up that does SSL tunneling, but
> you've forgot to install the CA certificate, so that you don't trust
> your own proxy?
>
> Can you share the full output of
>
> echo "http_proxy ${http_proxy} https_proxy ${https_proxy}"
>
> and
>
> /usr/lib/uhd/utils/uhd_images_downloader.py --help
> /usr/lib/uhd/utils/uhd_images_downloader.py -V
>
> please?
>
> Best regards,
> Marcus
>
> On 19.03.20 16:35, Basse Ang wrote:
> > Hi
> >
> > just tried to install UHD into my ubuntu 14 hosts. doing for 2 months, =
I
> > always ended with this error:
> >
> > oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py
> > [INFO] Images destination: /usr/share/uhd/images
> > [INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
> > Creating an empty one.
> > [ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510:
> > error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate
> > verify failed
> > You can run this again with the '--verbose' flag to see more informatio=
n
> > If the problem persists, please email the output to: support@ettus.com
> > <mailto:support@ettus.com>
> > oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py --verbose
> > [INFO] Images destination: /usr/share/uhd/images
> > [INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
> > Creating an empty one.
> > [DEBUG] URLs to download:
> > usrp1/fpga-6bea23d/usrp1_b100_fw_default-g6bea23d.zip
> > x3xx/fpga-bb85bdff/x3xx_x310_fpga_default-gbb85bdff.zip
> > usrp2/fpga-6bea23d/usrp2_n210_fpga_default-g6bea23d.zip
> > n230/fpga-bb85bdff/n230_n230_fpga_default-gbb85bdff.zip
> > usrp1/fpga-6bea23d/usrp1_b100_fpga_default-g6bea23d.zip
> > b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip
> > usrp2/fpga-6bea23d/usrp2_n200_fpga_default-g6bea23d.zip
> > e3xx/fpga-bb85bdff/e3xx_e320_fpga_default-gbb85bdff.zip
> > n3xx/fpga-bb85bdff/n3xx_n310_fpga_default-gbb85bdff.zip
> > b2xx/fpga-bb85bdff/b2xx_b205mini_fpga_default-gbb85bdff.zip
> > x3xx/fpga-bb85bdff/x3xx_x300_fpga_default-gbb85bdff.zip
> > octoclock/uhd-14000041/octoclock_octoclock_fw_default-g14000041.zip
> > usrp2/fpga-6bea23d/usrp2_usrp2_fw_default-g6bea23d.zip
> > usrp2/fpga-6bea23d/usrp2_n200_fw_default-g6bea23d.zip
> > usrp2/fpga-6bea23d/usrp2_usrp2_fpga_default-g6bea23d.zip
> > b2xx/uhd-2bdad498/b2xx_common_fw_default-g2bdad498.zip
> > n3xx/fpga-bb85bdff/n3xx_n320_fpga_default-gbb85bdff.zip
> > b2xx/fpga-bb85bdff/b2xx_b200mini_fpga_default-gbb85bdff.zip
> > usrp1/fpga-6bea23d/usrp1_usrp1_fpga_default-g6bea23d.zip
> > usb/uhd-14000041/usb_common_windrv_default-g14000041.zip
> > usrp2/fpga-6bea23d/usrp2_n210_fw_default-g6bea23d.zip
> > n3xx/fpga-bb85bdff/n3xx_n300_fpga_default-gbb85bdff.zip
> > e3xx/fpga-bb85bdff/e3xx_e310_fpga_default-gbb85bdff.zip
> > b2xx/fpga-bb85bdff/b2xx_b210_fpga_default-gbb85bdff.zip
> > [ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510:
> > error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate
> > verify failed
> > You can run this again with the '--verbose' flag to see more informatio=
n
> > If the problem persists, please email the output to: support@ettus.com
> > <mailto:support@ettus.com>
> > oai@oai:~$
> >
> >
> > I have already udate my certificate, but it does not help.
> >
> > could anyone help me to figure out what should I do?
> >
> > Thank you
> > Bass
>

--00000000000084922705a13e918c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div>hi Marcus,<br><br></div>Thank y=
ou for your reply.<br><br></div>this is the output:<br><br>Please run:<br><=
br>=C2=A0&quot;/usr/lib/uhd/utils/uhd_images_downloader.py&quot;<br>No UHD =
Devices Found<br>oai@oai:~$ sudo /usr/lib/uhd/utils/uhd_images_downloader.p=
y<br>[INFO] Images destination: /usr/share/uhd/images<br>[INFO] No inventor=
y file found at /usr/share/uhd/images/inventory.json. Creating an empty one=
.<br>[ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510=
: error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verif=
y failed<br>You can run this again with the &#39;--verbose&#39; flag to see=
 more information<br><br>If the problem persists, please email the output t=
o: <a href=3D"mailto:support@ettus.com">support@ettus.com</a><br><b>oai@oai=
:~$=C2=A0 echo &quot;http_proxy ${http_proxy} https_proxy ${https_proxy}&qu=
ot;</b><br>http_proxy=C2=A0 https_proxy <br><br><b>oai@oai:~$=C2=A0 /usr/li=
b/uhd/utils/uhd_images_downloader.py --help</b><br>usage: uhd_images_downlo=
ader.py [-h] [-t TYPES] [-i INSTALL_LOCATION]<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 [-m MANIFEST_LOCATION] [-I INVENTORY_LOCATION]<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 [-l] [--url-only] [--buffer-size BUFFER_SIZE]<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [--download-limit DOWNLOAD_LIMIT]<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [--http-proxy HTTP_PROXY] [-b BASE_URL=
] [-k]<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [-T] [-y] [-n] [--refetch]=
 [-V] [-q] [-v]<br><br>optional arguments:<br>=C2=A0 -h, --help=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 show this help messa=
ge and exit<br>=C2=A0 -t TYPES, --types TYPES<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RegEx to select image sets from the=
 manifest file.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 (default: None)<br>=C2=A0 -i INSTALL_LOCATION, --install-location=
 INSTALL_LOCATION<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Set custom install location for images (default: None)<br>=C2=A0 =
-m MANIFEST_LOCATION, --manifest-location MANIFEST_LOCATION<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Set custom location for=
 the manifest file (default: )<br>=C2=A0 -I INVENTORY_LOCATION, --inventory=
-location INVENTORY_LOCATION<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Set custom location for the inventory file (default: =
)<br>=C2=A0 -l, --list-targets=C2=A0=C2=A0=C2=A0 Print targets in the manif=
est file to stdout, and<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 exit. To get relative paths only, specify an empty<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 base URL (-b &=
#39;&#39;). (default: False)<br>=C2=A0 --url-only=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 With -l, only print the URLs, no=
thing else. (default:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 False)<br>=C2=A0 --buffer-size BUFFER_SIZE<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Set download buffer siz=
e (default: 8192)<br>=C2=A0 --download-limit DOWNLOAD_LIMIT<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Set threshold for downl=
oad limits. Any download larger<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 than this will require approval, either interactiv=
ely,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 or=
 by providing --yes. (default: 104857600)<br>=C2=A0 --http-proxy HTTP_PROXY=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Speci=
fy HTTP proxy in the format<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 http://user:pass@1.2.3.4:port If this this option is<=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 not give=
n, the environment variable HTTP_PROXY can<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 also be used to specify a proxy. (defa=
ult: None)<br>=C2=A0 -b BASE_URL, --base-url BASE_URL<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Set base URL for images downl=
oad location (default:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 <a href=3D"http://files.ettus.com/binaries/cache/">http://f=
iles.ettus.com/binaries/cache/</a>)<br>=C2=A0 -k, --keep=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Keep the downloaded images=
 archives in the image<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 directory (default: False)<br>=C2=A0 -T, --test=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Verify the downloade=
d archives before extracting them<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 (default: False)<br>=C2=A0 -y, --yes=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Answer all =
questions with &#39;yes&#39; (for scripting<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 purposes). (default: False)<br>=C2=A0 =
-n, --dry-run=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Print selecte=
d target without actually downloading<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 them. (default: False)<br>=C2=A0 --refetch=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ig=
nore the inventory file and download all images.<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (default: False)<br>=C2=A0 -V, -=
-version=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 show program&#39;s=
 version number and exit<br>=C2=A0 -q, --quiet=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Decrease verbosity level (default: 0)<br>=
=C2=A0 -v, --verbose=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Increa=
se verbosity level (default: 0)<br><br><b>oai@oai:~$=C2=A0 /usr/lib/uhd/uti=
ls/uhd_images_downloader.py -V</b><br>3.14.1.1-release<br><br></div><div>re=
gards<br></div><div>Bass<br></div></div><br><div class=3D"gmail_quote"><div=
 class=3D"gmail_attr" dir=3D"ltr">On Thu, Mar 19, 2020 at 1:41 PM Marcus M=
=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@e=
ttus.com</a>&gt; wrote:<br></div><blockquote style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail=
_quote">Hi Basse,<br>
<br>
knowing our downloader, this is very likely a problem on your side: Is<br>
it possible you have a HTTP proxy set up that does SSL tunneling, but<br>
you&#39;ve forgot to install the CA certificate, so that you don&#39;t trus=
t<br>
your own proxy?<br>
<br>
Can you share the full output of<br>
<br>
echo &quot;http_proxy ${http_proxy} https_proxy ${https_proxy}&quot;<br>
<br>
and<br>
<br>
/usr/lib/uhd/utils/uhd_images_downloader.py --help<br>
/usr/lib/uhd/utils/uhd_images_downloader.py -V<br>
<br>
please?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 19.03.20 16:35, Basse Ang wrote:<br>
&gt; Hi<br>
&gt; <br>
&gt; just tried to install UHD into my ubuntu 14 hosts. doing for 2 months,=
 I<br>
&gt; always ended with this error:<br>
&gt; <br>
&gt; oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py<br>
&gt; [INFO] Images destination: /usr/share/uhd/images<br>
&gt; [INFO] No inventory file found at /usr/share/uhd/images/inventory.json=
.<br>
&gt; Creating an empty one.<br>
&gt; [ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510=
:<br>
&gt; error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate<br=
>
&gt; verify failed<br>
&gt; You can run this again with the &#39;--verbose&#39; flag to see more i=
nformation<br>
&gt; If the problem persists, please email the output to: <a target=3D"_bla=
nk" href=3D"mailto:support@ettus.com">support@ettus.com</a><br>
&gt; &lt;mailto:<a target=3D"_blank" href=3D"mailto:support@ettus.com">supp=
ort@ettus.com</a>&gt;<br>
&gt; oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py --verbose<br>
&gt; [INFO] Images destination: /usr/share/uhd/images<br>
&gt; [INFO] No inventory file found at /usr/share/uhd/images/inventory.json=
.<br>
&gt; Creating an empty one.<br>
&gt; [DEBUG] URLs to download:<br>
&gt; usrp1/fpga-6bea23d/usrp1_b100_fw_default-g6bea23d.zip<br>
&gt; x3xx/fpga-bb85bdff/x3xx_x310_fpga_default-gbb85bdff.zip<br>
&gt; usrp2/fpga-6bea23d/usrp2_n210_fpga_default-g6bea23d.zip<br>
&gt; n230/fpga-bb85bdff/n230_n230_fpga_default-gbb85bdff.zip<br>
&gt; usrp1/fpga-6bea23d/usrp1_b100_fpga_default-g6bea23d.zip<br>
&gt; b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip<br>
&gt; usrp2/fpga-6bea23d/usrp2_n200_fpga_default-g6bea23d.zip<br>
&gt; e3xx/fpga-bb85bdff/e3xx_e320_fpga_default-gbb85bdff.zip<br>
&gt; n3xx/fpga-bb85bdff/n3xx_n310_fpga_default-gbb85bdff.zip<br>
&gt; b2xx/fpga-bb85bdff/b2xx_b205mini_fpga_default-gbb85bdff.zip<br>
&gt; x3xx/fpga-bb85bdff/x3xx_x300_fpga_default-gbb85bdff.zip<br>
&gt; octoclock/uhd-14000041/octoclock_octoclock_fw_default-g14000041.zip<br=
>
&gt; usrp2/fpga-6bea23d/usrp2_usrp2_fw_default-g6bea23d.zip<br>
&gt; usrp2/fpga-6bea23d/usrp2_n200_fw_default-g6bea23d.zip<br>
&gt; usrp2/fpga-6bea23d/usrp2_usrp2_fpga_default-g6bea23d.zip<br>
&gt; b2xx/uhd-2bdad498/b2xx_common_fw_default-g2bdad498.zip<br>
&gt; n3xx/fpga-bb85bdff/n3xx_n320_fpga_default-gbb85bdff.zip<br>
&gt; b2xx/fpga-bb85bdff/b2xx_b200mini_fpga_default-gbb85bdff.zip<br>
&gt; usrp1/fpga-6bea23d/usrp1_usrp1_fpga_default-g6bea23d.zip<br>
&gt; usb/uhd-14000041/usb_common_windrv_default-g14000041.zip<br>
&gt; usrp2/fpga-6bea23d/usrp2_n210_fw_default-g6bea23d.zip<br>
&gt; n3xx/fpga-bb85bdff/n3xx_n300_fpga_default-gbb85bdff.zip<br>
&gt; e3xx/fpga-bb85bdff/e3xx_e310_fpga_default-gbb85bdff.zip<br>
&gt; b2xx/fpga-bb85bdff/b2xx_b210_fpga_default-gbb85bdff.zip<br>
&gt; [ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510=
:<br>
&gt; error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate<br=
>
&gt; verify failed<br>
&gt; You can run this again with the &#39;--verbose&#39; flag to see more i=
nformation<br>
&gt; If the problem persists, please email the output to: <a target=3D"_bla=
nk" href=3D"mailto:support@ettus.com">support@ettus.com</a><br>
&gt; &lt;mailto:<a target=3D"_blank" href=3D"mailto:support@ettus.com">supp=
ort@ettus.com</a>&gt;<br>
&gt; oai@oai:~$<br>
&gt; <br>
&gt; <br>
&gt; I have already udate my certificate, but it does not help.<br>
&gt; <br>
&gt; could anyone help me to figure out what should I do?<br>
&gt; <br>
&gt; Thank you<br>
&gt; Bass<br>
</blockquote></div>

--00000000000084922705a13e918c--


--===============1749886992870527047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1749886992870527047==--

