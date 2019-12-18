Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F03451251C1
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 20:23:05 +0100 (CET)
Received: from [::1] (port=60496 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iheuW-0001UI-Tx; Wed, 18 Dec 2019 14:23:04 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:39416)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iheuT-0001MV-5F
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 14:23:01 -0500
Received: by mail-lj1-f180.google.com with SMTP id l2so3410685lja.6
 for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2019 11:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3slGi2EQjOXAnzKFPWD3JBpPk4hap3KWmLPLGcRrLM4=;
 b=1Juv0rXmfsGEJOE84o4xh48xcZhvIv2n3ilUzr+rQRa4hSLwNoe5loiI3k0zAsTznw
 7i90VoxvXRos/TbRB2kDZ1qd+BLocaXbnCP5+tRCFHR8XPjQzAfsb85vrOwKbWEnj4a1
 +20En6OXqPG/j9Bu9dauD8i/f3QVCG154dSzOk+vonl/vOdXBUrLso1/u/D3wvgPhHiD
 BId5FI+Cf37m4iIKFk/HJmdrA/LbzPOFgrNGDfqkOilU/dqZI0nih+Kkn7SdhVLeWx7g
 +nDKItZ227ZUa4od7jj2JfLjyZM9Mx77jnMciG06QXnLQFFrNdR0OBbjfz4T3jYxhyK/
 kfCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3slGi2EQjOXAnzKFPWD3JBpPk4hap3KWmLPLGcRrLM4=;
 b=VwwLv/Lv9VocoN/qaQ3yKRTUjDZA9lzS2RKuNVAaPYAPYfWNGDW3mmjZlqi+cUWzFL
 hITgyECXnaoJ6KG1d+7EuKm/FYauMuDi77MPM9UTLiKJmydvbh9JrUmOcxVQ82zq+c8Q
 1+NrlIqg0AZ3YvUjgojuqLHOtbE+vHTbRU5pDa5iXIgwXgk7JKxF9Y9BFyK6q30FZS8K
 s5y+F//jU1lA7ONeyucUXeh20+/eu+sONZBcH47rAqGbWE/9S+Xfd2iVxDEXB1n7wyPj
 VJq1Vk4VD1X9468A+56eQKDa2IHEmyxrn6owwIev4TeYgZ+mqxAfzg3KmKyMlnfbYg8h
 Ne6A==
X-Gm-Message-State: APjAAAXvrojpxVgMGa6LoDV4XZDhAVVDqlqeExD0+GGHesg8JNNWeDSa
 Olzq0GJ9Qr2erstAS4IgNGOyxbOWAC1llODEfDrV+0ENLbI=
X-Google-Smtp-Source: APXvYqxz44AoWOuTk6qhc8fPPisGF250Ta9VnTEwINeZeyK3oABNNil25gSYbRQSftQfEYzGSjGBNmzvbOdDPLuiKoA=
X-Received: by 2002:a2e:7d01:: with SMTP id y1mr3121332ljc.100.1576696939470; 
 Wed, 18 Dec 2019 11:22:19 -0800 (PST)
MIME-Version: 1.0
References: <037c01d5aeef$b73a84a0$25af8de0$@iit.demokritos.gr>
In-Reply-To: <037c01d5aeef$b73a84a0$25af8de0$@iit.demokritos.gr>
Date: Wed, 18 Dec 2019 13:22:07 -0600
Message-ID: <CANf970Ztj8XHeLzcOZ0NVbXFACnXriJY4mqWuouTQsYpKnWVmw@mail.gmail.com>
To: Akis Kourtis <akis.kourtis@iit.demokritos.gr>
Subject: Re: [USRP-users] DPDK build with N310
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2411710911000105914=="
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

--===============2411710911000105914==
Content-Type: multipart/related; boundary="00000000000001d04b0599ff5d3d"

--00000000000001d04b0599ff5d3d
Content-Type: multipart/alternative; boundary="00000000000001d04a0599ff5d3c"

--00000000000001d04a0599ff5d3c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Akis,

What version of DPDK are you using? What version of UHD do you have on the
host? I'm not sure that mode of failure is something I'd chalk up to the
DPDK install.

Could you give some detail on your config file, DPDK install version(s),
and hardware setup as well?

Best,

Sam Reiter
Ettus Research


On Mon, Dec 9, 2019 at 6:21 PM Akis Kourtis via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello all,
>
>
>
> I am trying to build the oai-5g-gNB. I have managed to build the DPDK wit=
h
> uhd successfully, however when I run the probe command I receive the
> following error.
>
>
>
> EAL: Starting I/O threads!
>
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g0347a6d8
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D10.30.0.218,type=3Dn3xx,product=3Dn310,serial=3D3177E48,claim=
ed=3DFalse,addr=3D192.168.20.2,second_addr=3D192.168.20.2,use_dpdk=3D1
>
> [ERROR] [MPMD] No viable transport path found!
>
> [ERROR] [MPMD] Failure during block enumeration: RuntimeError: No viable
> transport path found!
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `time_source=3Dinternal,clock_source=3Dinternal,second_addr=3D192.168.20.=
2,mgmt_addr=3D10.30.0.218,product=3Dn310,use_dpdk=3D1'.
>
> [WARNING] [MPM.PeriphManager.UDP] Number of detected CHDR devices is
> inconsistent. Dropped from 1 to 0.
>
> [INFO] [MPM.PeriphManager.UDP] No CHDR interfaces found!
>
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
>
>
> My guess from reading back posts from the forum, is that the proper DPDK
> file is not read.
>
> I can see a /etc/conf/uhd.conf file, but no /root/.uhd/uhd.conf file.
>
> Am I in the right direction, and if so, how do I enable the user conf fil=
e?
>
>
>
> If not, is there a direction I should head towards?
>
>
>
> Thank you,
>
>
>
> Akis
>
>
>
> *Akis Kourtis*
>
> M.Sc, Ph.D
>
> Research Associate
>
> Media Networks Laboratory
>
> Institute of Information & Telecommunications
>
> National Centre for Scientific Research =E2=80=9CDEMOKRITOS=E2=80=9D
>
>
>
> akis.kourtis@ iit.demokritos.gr
>
> +306948386769
>
> [image: engl LOGOTYPO XORIS ETHNOSIMO ME DIEYTHINSI_3]
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000001d04a0599ff5d3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Akis,<div><br></div><div>What version of DPDK are you =
using? What version of UHD do you have on the host? I&#39;m not sure that m=
ode of failure is something I&#39;d chalk up to the DPDK install.=C2=A0</di=
v><div><br></div><div>Could you give some detail on your=C2=A0config file, =
DPDK install version(s), and hardware setup as well?</div><div><br></div><d=
iv>Best,</div><div><br><div><div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">=
Sam Reiter=C2=A0<div>Ettus Research<br></div></div></div></div></div></div>=
<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Dec 9, 2019 at 6:21 PM Akis Kourtis via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div lang=3D"EN-US"><div class=3D"gmail-m_766158547667184598WordSection1">=
<p class=3D"MsoNormal">Hello all,<u></u><u></u></p><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I am trying to build the oai-=
5g-gNB. I have managed to build the DPDK with uhd successfully, however whe=
n I run the probe command I receive the following error.<u></u><u></u></p><=
p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">EAL: S=
tarting I/O threads!<u></u><u></u></p><p class=3D"MsoNormal">[INFO] [UHD] l=
inux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-g0347a6d8<u></=
u><u></u></p><p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) =
in parallel with args: mgmt_addr=3D10.30.0.218,type=3Dn3xx,product=3Dn310,s=
erial=3D3177E48,claimed=3DFalse,addr=3D192.168.20.2,second_addr=3D192.168.2=
0.2,use_dpdk=3D1<u></u><u></u></p><p class=3D"MsoNormal">[ERROR] [MPMD] No =
viable transport path found!<u></u><u></u></p><p class=3D"MsoNormal">[ERROR=
] [MPMD] Failure during block enumeration: RuntimeError: No viable transpor=
t path found!<u></u><u></u></p><p class=3D"MsoNormal">[INFO] [MPM.PeriphMan=
ager] init() called with device args `time_source=3Dinternal,clock_source=
=3Dinternal,second_addr=3D192.168.20.2,mgmt_addr=3D10.30.0.218,product=3Dn3=
10,use_dpdk=3D1&#39;.<u></u><u></u></p><p class=3D"MsoNormal">[WARNING] [MP=
M.PeriphManager.UDP] Number of detected CHDR devices is inconsistent. Dropp=
ed from 1 to 0.<u></u><u></u></p><p class=3D"MsoNormal">[INFO] [MPM.PeriphM=
anager.UDP] No CHDR interfaces found!<u></u><u></u></p><p class=3D"MsoNorma=
l">Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<u></u><u></u=
></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">=
My guess from reading back posts from the forum, is that the proper DPDK fi=
le is not read.<u></u><u></u></p><p class=3D"MsoNormal">I can see a /etc/co=
nf/uhd.conf file, but no /root/.uhd/uhd.conf file.<u></u><u></u></p><p clas=
s=3D"MsoNormal">Am I in the right direction, and if so, how do I enable the=
 user conf file?<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></=
u></p><p class=3D"MsoNormal">If not, is there a direction I should head tow=
ards?<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p cl=
ass=3D"MsoNormal">Thank you,<u></u><u></u></p><p class=3D"MsoNormal"><u></u=
>=C2=A0<u></u></p><p class=3D"MsoNormal">Akis<u></u><u></u></p><p class=3D"=
MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><b><span lang=3D"=
EN-GB" style=3D"font-size:10pt;font-family:&quot;Bookman Old Style&quot;,se=
rif">Akis Kourtis<u></u><u></u></span></b></p><p class=3D"MsoNormal"><span =
lang=3D"EN-GB" style=3D"font-size:9pt;font-family:&quot;Bookman Old Style&q=
uot;,serif">M.Sc, Ph.D<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-GB" style=3D"font-size:9pt;font-family:&quot;Bookman Old Style&=
quot;,serif;color:rgb(166,166,166)">Research Associate <u></u><u></u></span=
></p><p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:9pt;fon=
t-family:&quot;Bookman Old Style&quot;,serif;color:rgb(166,166,166)">Media =
Networks Laboratory</span><span lang=3D"EN-GB" style=3D"font-size:9pt;font-=
family:&quot;Bookman Old Style&quot;,serif;color:rgb(174,170,170)"><u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-=
size:9pt;font-family:&quot;Bookman Old Style&quot;,serif;color:rgb(174,170,=
170)">Institute</span><span lang=3D"EN-GB" style=3D"font-size:9pt;font-fami=
ly:&quot;Bookman Old Style&quot;,serif;color:rgb(166,166,166)"> of Informat=
ion &amp; Telecommunications<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-GB" style=3D"font-size:9pt;font-family:&quot;Bookman Old =
Style&quot;,serif;color:rgb(166,166,166)">National Centre for Scientific Re=
search =E2=80=9CDEMOKRITOS=E2=80=9D<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-GB" style=3D"font-size:3pt;font-family:&quot;Bookm=
an Old Style&quot;,serif;color:rgb(166,166,166)"><u></u>=C2=A0<u></u></span=
></p><p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:9pt;fon=
t-family:&quot;Bookman Old Style&quot;,serif;color:rgb(166,166,166)">akis.k=
ourtis@ <a href=3D"http://iit.demokritos.gr" target=3D"_blank">iit.demokrit=
os.gr</a><u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-G=
B" style=3D"font-size:9pt;font-family:&quot;Bookman Old Style&quot;,serif;c=
olor:rgb(166,166,166)">+306948386769<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EL" style=3D"font-size:10pt;color:rgb(31,73,125)"><i=
mg width=3D"576" height=3D"104" style=3D"width: 6in; height: 1.0833in;" id=
=3D"gmail-m_766158547667184598_x0395__x03b9__x03ba__x03cc__x03bd__x03b1__x0=
020_1" src=3D"cid:16f1a72bfad4ce8e91" alt=3D"engl LOGOTYPO XORIS ETHNOSIMO =
ME DIEYTHINSI_3"></span><span lang=3D"EN-GB"><u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div>_____________________=
__________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000001d04a0599ff5d3c--
--00000000000001d04b0599ff5d3d
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <16f1a72bfad4ce8e91>
X-Attachment-Id: 16f1a72bfad4ce8e91

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCABoAkADASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDuNQ+J
Oi6bqFxZzrdebA5R9sWRkenNV/8Aha2gA/dvP+/P/wBevPtaszqHxEu7Res1/s/AkZ/SqvinTbbT
dWZtPO7T518y3I9MkFfwINd8cPTdk92crqz1PS/+FraB/dvP+/P/ANetfw94v07xNNPHYCcNCoZv
MTbwa8hs9ECJrEd/Hie1sRcRhX6ElcE468Gum+ELqupaluIBMSY9+TUVKNNQbj0HCpJySZ6tRms6
TXLNJWiEmZFGWBH3fqOtNGsBrYyxQSSnYZFwpAI9yen41xnSalFZem67DfrEGilt5Zc7Y5Rgtjrj
1rUoAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi
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
--00000000000001d04b0599ff5d3d--


--===============2411710911000105914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2411710911000105914==--

