Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC7FEE96B
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2019 21:26:02 +0100 (CET)
Received: from [::1] (port=33936 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iRivF-0003MD-A4; Mon, 04 Nov 2019 15:25:57 -0500
Received: from mail-qt1-f177.google.com ([209.85.160.177]:38584)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zcao@c3commsystems.com>)
 id 1iRivC-0003F5-4P
 for USRP-users@lists.ettus.com; Mon, 04 Nov 2019 15:25:54 -0500
Received: by mail-qt1-f177.google.com with SMTP id p20so7659644qtq.5
 for <USRP-users@lists.ettus.com>; Mon, 04 Nov 2019 12:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=c3commsystems-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=gxMMZy8V/O6j8bfmCYmyLeScVLiN31ktKOd9Z7Wsn+0=;
 b=JAnorO0RVTFeoQyH8xVBjdDrxsVYDMmDbuxIIf5vRa9+FVzQKy+GHUmsYN2FldS6g9
 LNaM53+KB4OXceCiI+6acZtD8mhVtDGivEjp8stqj2evzzrg2Tjiy09ilVv/7tMhN+pR
 XLqhWlirip3EmT/c06cobEilx1VA/ooUYTNRSkQkwGOdGfg5rA1cfPFW636DkyWUCltX
 YpgJs95wQ/qrdEOpvRcDsQHglZqEpFKSCRvtEL80lsvjYAwLQ6S4uehYmjyAJQGFcsIT
 d7ly+KePzFN8LyEwQaxhhdWCLjaqrMjZrrWU9ycoBf6S2e06okQVA+ZBsvwJZUnyWz37
 y3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=gxMMZy8V/O6j8bfmCYmyLeScVLiN31ktKOd9Z7Wsn+0=;
 b=uTtNZvED6fgoC/xF+6jYfbzitcVZ+MZPWmgy9QIeTF1B0zVHrFNasGS1uAXZerBge9
 ubo0ZJZf4/9eW68JG6hHTgT2DvOBxPWqbi7PKACo+NurwhNi0rCn8PA6Tya45Hdc0/Uw
 eL4AlSBu/vvmAAbFhif1k+fH+RqEtD0tJbajlVIngKJ2/KMKDZVFusViiD4bacf66Bqn
 bmpShpeAp42hj6p5F2vOct5VvwIJHmKVuRPI4WgLWcpHCos+0Hr7a0Lctjh3DqJL0JhU
 u6SOTproDilXGvgwX5tv3IHFmn/aqPcVlUOYgJ9/gBYuwhq1ZJxGLJb+cc9XpiiqqNyY
 etVw==
X-Gm-Message-State: APjAAAXjYVoieQq4lPvIRO87vHOVsF9lkK1D4ZOosjkM4VniKw9NPmfI
 ho8Nsv6ISYhE2646KN4Kw/ylGmQ7Viw=
X-Google-Smtp-Source: APXvYqz4qBwPtyXpUQ75/ElMvwmOE+6Abq0ZjUNXGL1fq77N28df25+e/S/HmbU0KG/Y3v0WeN1Fcg==
X-Received: by 2002:aed:3be9:: with SMTP id s38mr14075014qte.175.1572899113301; 
 Mon, 04 Nov 2019 12:25:13 -0800 (PST)
Received: from [192.170.1.102] (exchange.sharedspectrum.com. [70.163.31.2])
 by smtp.gmail.com with ESMTPSA id 143sm2731204qke.54.2019.11.04.12.25.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 12:25:12 -0800 (PST)
Message-Id: <86BC5E7F-802A-4100-AC71-72CB42A42DE8@c3commsystems.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Mon, 4 Nov 2019 15:25:11 -0500
In-Reply-To: <b21ca1df-ce39-ee8e-70c7-9a89726ff11e@balister.org>
To: Philip Balister <philip@balister.org>
References: <F8807E43-2706-48BD-84BC-3C53C4EE65CB@c3commsystems.com>
 <b21ca1df-ce39-ee8e-70c7-9a89726ff11e@balister.org>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [USRP-users] Problems when Running UHD_3.14.1 Examples on E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: zcao--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "zcao@c3commsystems.com" <zcao@c3commsystems.com>
Cc: USRP-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3246459594838526402=="
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


--===============3246459594838526402==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_88809E9A-DD16-4034-B318-B7594DA170AF"


--Apple-Mail=_88809E9A-DD16-4034-B318-B7594DA170AF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Philip,

Thanks for the response. That=E2=80=99s what we did to get through the =
issue.=20

But is it what we supposed to do, i.e., edit these UHD provided python =
scripts manually?

Thanks,
Zhongren

> On Nov 4, 2019, at 2:27 PM, Philip Balister <philip@balister.org> =
wrote:
>=20
> On 11/4/19 5:04 PM, zcao--- via USRP-users wrote:
>> Hi,=20
>>=20
>> We are trying to run UHD examples on E310. The process we took are as =
the following.
>>=20
>> 1. Flash a fresh SDcard using the dev image located at =
http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/ =
<http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/>
>>=20
>> 2. Cross-compile UHD source code on a development machine and install =
the build on to the E310 device using sshfs. Note that this is a =
different from what is proposed in AN-311. We installed UHD 3.14 onto =
the device directly.
>>=20
>> 3. Running /usr/bin/uhd_find_devices, we got the following output, =
looks normal.
>>=20
>> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; =
UHD_3.14.1.1-0-g0347a6d8
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>>    serial: 31819A1
>>    name:=20
>>    node: /dev/axi_fpga
>>    product: E3XX SG3
>>    type: e3x0
>>=20
>>=20
>> However, we ran into the following problems, which seem to be =
related.
>>=20
>> 1. We cannot run /usr/bin/uhd_usrp_probe, because of the FPGA =
compatibility. Specifically, the error messages are
>>=20
>> Error: RuntimeError: Expected FPGA compatibility number 255.x, but =
got 14.0:
>> The FPGA build is not compatible with the host code build.
>> Please run:
>>=20
>> "/usr/lib/uhd/utils/uhd_images_downloader.py"
>>=20
>>=20
>> 2. But running the above python script gives us the following error =
messages.
>>=20
>> -sh: /usr/lib/uhd/utils/uhd_images_downloader.py: =
/usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/python2: =
bad interpreter: No such file or directory/
>=20
> Look at the script /usr/lib/uhd/utils/uhd_images_downloader.py and =
edit
> the #!/bin/fo/bar/python to something reasonable.
>=20
> Philip
>=20
>>=20
>>=20
>> Note that the python script is looking for the SDK, which should be =
on the development machine, instead of the device itself.
>>=20
>> Would really appreciate it if anyone knows how to handle above issues =
in E310 device itself?
>>=20
>> Thanks,
>> Arnold
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>=20

Arnold Z. Cao, Ph.D.

C-3 Comm Systems, LLC
3100 Clarendon Blvd., Suite 200
Arlington, VA 22201
Phone: (703) 829-0588
Email : zcao@c3commsystems.com <mailto:zcao@c3commsystems.com>

--Apple-Mail=_88809E9A-DD16-4034-B318-B7594DA170AF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Philip,<div class=3D""><br class=3D""></div><div =
class=3D"">Thanks for the response. That=E2=80=99s what we did to get =
through the issue.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">But is it what we supposed to do, i.e., edit these UHD =
provided python scripts manually?</div><div class=3D""><br =
class=3D""></div><div class=3D"">Thanks,</div><div class=3D"">Zhongren<br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 4, 2019, at 2:27 PM, Philip Balister &lt;<a =
href=3D"mailto:philip@balister.org" class=3D"">philip@balister.org</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"">On 11/4/19 5:04 PM, zcao--- via USRP-users wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">Hi, <br class=3D""><br =
class=3D"">We are trying to run UHD examples on E310. The process we =
took are as the following.<br class=3D""><br class=3D"">1. Flash a fresh =
SDcard using the dev image located at <a =
href=3D"http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/"=
 =
class=3D"">http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg=
3/</a> &lt;<a =
href=3D"http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/"=
 =
class=3D"">http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg=
3/</a>&gt;<br class=3D""><br class=3D"">2. Cross-compile UHD source code =
on a development machine and install the build on to the E310 device =
using sshfs. Note that this is a different from what is proposed in =
AN-311. We installed UHD 3.14 onto the device directly.<br class=3D""><br =
class=3D"">3. Running /usr/bin/uhd_find_devices, we got the following =
output, looks normal.<br class=3D""><br class=3D"">[INFO] [UHD] linux; =
GNU C++ version 4.9.2; Boost_105700; UHD_3.14.1.1-0-g0347a6d8<br =
class=3D"">--------------------------------------------------<br =
class=3D"">-- UHD Device 0<br =
class=3D"">--------------------------------------------------<br =
class=3D"">Device Address:<br class=3D""> &nbsp;&nbsp;&nbsp;serial: =
31819A1<br class=3D""> &nbsp;&nbsp;&nbsp;name: <br class=3D""> =
&nbsp;&nbsp;&nbsp;node: /dev/axi_fpga<br class=3D""> =
&nbsp;&nbsp;&nbsp;product: E3XX SG3<br class=3D""> =
&nbsp;&nbsp;&nbsp;type: e3x0<br class=3D""><br class=3D""><br =
class=3D"">However, we ran into the following problems, which seem to be =
related.<br class=3D""><br class=3D"">1. We cannot run =
/usr/bin/uhd_usrp_probe, because of the FPGA compatibility. =
Specifically, the error messages are<br class=3D""><br class=3D"">Error: =
RuntimeError: Expected FPGA compatibility number 255.x, but got 14.0:<br =
class=3D"">The FPGA build is not compatible with the host code build.<br =
class=3D"">Please run:<br class=3D""><br class=3D""> =
"/usr/lib/uhd/utils/uhd_images_downloader.py"<br class=3D""><br =
class=3D""><br class=3D"">2. But running the above python script gives =
us the following error messages.<br class=3D""><br class=3D"">-sh: =
/usr/lib/uhd/utils/uhd_images_downloader.py: =
/usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/python2: =
bad interpreter: No such file or directory/<br class=3D""></blockquote><br=
 class=3D"">Look at the script =
/usr/lib/uhd/utils/uhd_images_downloader.py and edit<br class=3D"">the =
#!/bin/fo/bar/python to something reasonable.<br class=3D""><br =
class=3D"">Philip<br class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><br class=3D""><br class=3D"">Note that the python script is =
looking for the SDK, which should be on the development machine, instead =
of the device itself.<br class=3D""><br class=3D"">Would really =
appreciate it if anyone knows how to handle above issues in E310 device =
itself?<br class=3D""><br class=3D"">Thanks,<br class=3D"">Arnold<br =
class=3D""><br class=3D""><br class=3D""><br =
class=3D"">_______________________________________________<br =
class=3D"">USRP-users mailing list<br class=3D""><a =
href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""><br =
class=3D""></blockquote></div></div></blockquote></div><br class=3D""><div=
 class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div class=3D"">Arnold Z. Cao, Ph.D.</div><div class=3D""><br =
class=3D""></div><div class=3D""><b class=3D"">C-3 Comm Systems, =
LLC</b></div><div class=3D"">3100 Clarendon Blvd., Suite 200</div><div =
class=3D"">Arlington, VA 22201</div><div class=3D"">Phone: (703) =
829-0588</div><div class=3D"">Email :<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:zcao@c3commsystems.com" =
class=3D"">zcao@c3commsystems.com</a></div></div></div></div></div>
</div>
<br class=3D""></div></body></html>=

--Apple-Mail=_88809E9A-DD16-4034-B318-B7594DA170AF--


--===============3246459594838526402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3246459594838526402==--

