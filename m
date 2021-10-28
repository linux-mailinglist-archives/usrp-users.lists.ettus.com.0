Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B0C43D950
	for <lists+usrp-users@lfdr.de>; Thu, 28 Oct 2021 04:26:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 856C03844A3
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 22:26:41 -0400 (EDT)
Received: from out28-99.mail.aliyun.com (out28-99.mail.aliyun.com [115.124.28.99])
	by mm2.emwd.com (Postfix) with ESMTPS id B9D6B383FE1
	for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 22:25:57 -0400 (EDT)
X-Alimail-AntiSpam: AC=CONTINUE;BC=0.0717191|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_social|0.00918019-0.00297119-0.987849;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047193;MF=zeyuan.li@zengyi-tech.com;NM=1;PH=DS;RN=3;RT=3;SR=0;TI=SMTPD_---.Lj6sOH5_1635387953;
Received: from DESKTOPGVK0E1U(mailfrom:zeyuan.li@zengyi-tech.com fp:SMTPD_---.Lj6sOH5_1635387953)
          by smtp.aliyun-inc.com(10.194.97.246);
          Thu, 28 Oct 2021 10:25:53 +0800
From: <zeyuan.li@zengyi-tech.com>
To: "'Michael Dickens'" <michael.dickens@ettus.com>,
	"'Marcus D. Leech'" <patchvonbraun@gmail.com>
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com> <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com> <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com> <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com> <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com> <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com> <007601d7cae0$bd7649d0$3862dd70$@zengyi-tech.com> <ebb155d7-5462-260b-016f-3aa0a469dd52@gmail.com> <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com> <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com> <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com>
In-Reply-To: <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com>
Date: Thu, 28 Oct 2021 10:25:52 +0800
Message-ID: <00b801d7cba3$2199e300$64cda900$@zengyi-tech.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: zh-cn
Thread-Index: AQE3ddRZwZbIOH3LEMsp8sFULZxREAKNVLCeAgJfVhQBhNs5cAGVISrgApYybY0CRTQeoAFaJrwAAdXk688CKCkBCgGo3CVIrIwpPBA=
Message-ID-Hash: QMJYMJZAIBB2BJ3VCTX6PBCBIUEGDFAD
X-Message-ID-Hash: QMJYMJZAIBB2BJ3VCTX6PBCBIUEGDFAD
X-MailFrom: zeyuan.li@zengyi-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: 'USRP list' <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?562U5aSNOiBSZTog562U5aSNOiBSZTog562U5aSNOiDnrZTlpI06IFJlOiDnrZTlpI06IFJlOiBIb3cgdG8gdXNlIEV4dGVybmFsIExPIG9uIE4zMTAgZGV2aWNlPw==?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QMJYMJZAIBB2BJ3VCTX6PBCBIUEGDFAD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6323266219423595741=="

This is a multipart message in MIME format.

--===============6323266219423595741==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00B9_01D7CBE6.2FBE0D60"
Content-Language: zh-cn

This is a multipart message in MIME format.

------=_NextPart_000_00B9_01D7CBE6.2FBE0D60
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks and I will try it.

=20

=20

=20

=20

=E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=BB=E4=BD=95=E9=97=AE=E9=A2=98=E8=
=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=E8=81=94=E7=B3=BB=EF=BC=81

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94

=E6=9D=8E=E6=B3=BD=E8=BF=9C|=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=E5=B8=88=


=E5=8C=97=E4=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=E5=
=85=AC=E5=8F=B8

=E6=89=8B=E6=9C=BA=EF=BC=9A13121162044

=E5=9C=B0=E5=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=E5=
=8C=BA=E4=B8=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=9D=
=91SOHO 1108
=E7=BD=91=E5=9D=80=EF=BC=9A <http://www.zengyi-tech.com> =
www.zengyi-tech.com

=20

=E5=8F=91=E4=BB=B6=E4=BA=BA: Michael Dickens <michael.dickens@ettus.com> =

=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: =
2021=E5=B9=B410=E6=9C=8827=E6=97=A5 22:06
=E6=94=B6=E4=BB=B6=E4=BA=BA: Marcus D. Leech <patchvonbraun@gmail.com>
=E6=8A=84=E9=80=81: =E6=9D=8E=E6=B3=BD=E8=BF=9C =
<zeyuan.li@zengyi-tech.com>; USRP list <usrp-users@lists.ettus.com>
=E4=B8=BB=E9=A2=98: Re: [USRP-users] Re: =E7=AD=94=E5=A4=8D: Re: =
=E7=AD=94=E5=A4=8D: =E7=AD=94=E5=A4=8D: Re: =E7=AD=94=E5=A4=8D: Re: How =
to use External LO on N310 device?

=20

Forgot to mention earlier: at device initialization you have to supply =
the external LO at 5 GHz,

as well as set the device argument as noted. Once the device is fully =
initialized then you can

change the center frequency & the supplied LO must be 2x that. Hope this =
helps! - MLD

=20

=20

On Wed, Oct 27, 2021 at 9:51 AM Marcus D. Leech <patchvonbraun@gmail.com =
<mailto:patchvonbraun@gmail.com> > wrote:

On 2021-10-27 03:11, zeyuan.li@zengyi-tech.com =
<mailto:zeyuan.li@zengyi-tech.com>  wrote:

I set the correct device arguments,but it doesn=E2=80=99t work correctly =
and also there is no error report.

I don=E2=80=99t what can I do next .

So I want to config this argument in mpm.conf file or usrp_hwd.conf file =
to try to use external LO .

I couldn=E2=80=99t find this file named "usrp-hwd.conf" in =
=E2=80=9C/usr=E2=80=9D .and also =E2=80=9Cmpm.conf=E2=80=9D

=20

Again, modifying the MPM config file is NOT necessary to get external LO =
to work.

What frequency are you trying to use?

Can you share the lines of code you use to set up the N310 for shared LO =
operation--including the initial device "make" with device arguments, =
etc.



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_000_00B9_01D7CBE6.2FBE0D60
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:=E7=AD=89=E7=BA=BF;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>Thanks and I =
will try it.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'><o:p>&nbsp;</o:=
p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>=E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=BB=E4=BD=95=E9=
=97=AE=E9=A2=98=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=E8=81=94=E7=B3=
=BB=EF=BC=81<span lang=3DEN-US><o:p></o:p></span></p><p =
class=3DMsoNormal>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<span =
lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black;border:none windowtext =
1.0pt;padding:0cm;background:white'>=E6=9D=8E=E6=B3=BD=E8=BF=9C<span =
lang=3DEN-US>|</span>=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=E5=B8=88</span>=
<span lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black;border:none windowtext =
1.0pt;padding:0cm;background:white'>=E5=8C=97=E4=BA=AC=E6=9B=BE=E7=9B=8A=E7=
=A7=91=E6=8A=80=E6=9C=89=E9=99=90=E5=85=AC=E5=8F=B8</span><span =
lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black;border:none windowtext =
1.0pt;padding:0cm;background:white'>=E6=89=8B=E6=9C=BA=EF=BC=9A<span =
lang=3DEN-US>13121162044</span></span><span =
lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black;border:none windowtext =
1.0pt;padding:0cm;background:white'>=E5=9C=B0=E5=9D=80=EF=BC=9A=E5=8C=97=E4=
=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=E5=8C=BA=E4=B8=AD=E5=85=B3=E6=9D=91=E5=A4=
=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=9D=91<span lang=3DEN-US>SOHO =
1108<br></span>=E7=BD=91=E5=9D=80=EF=BC=9A<u><span lang=3DEN-US><a =
href=3D"http://www.zengyi-tech.com"><span =
style=3D'color:#0563C1'>www.zengyi-tech.com</span></a></span></u></span><=
span lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'><o:p>&nbsp;</o:=
p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>=E5=8F=91=E4=BB=
=B6=E4=BA=BA<span lang=3DEN-US>:</span></span></b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'> Michael =
Dickens &lt;michael.dickens@ettus.com&gt; <br></span><b><span =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>=E5=8F=91=E9=80=
=81=E6=97=B6=E9=97=B4<span lang=3DEN-US>:</span></span></b><span =
lang=3DEN-US style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'> =
2021</span><span =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>=E5=B9=B4<span =
lang=3DEN-US>10</span>=E6=9C=88<span =
lang=3DEN-US>27</span>=E6=97=A5<span lang=3DEN-US> =
22:06<br></span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> Marcus D. Leech =
&lt;patchvonbraun@gmail.com&gt;<br></span><b>=E6=8A=84=E9=80=81<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> =
</span>=E6=9D=8E=E6=B3=BD=E8=BF=9C<span lang=3DEN-US> =
&lt;zeyuan.li@zengyi-tech.com&gt;; USRP list =
&lt;usrp-users@lists.ettus.com&gt;<br></span><b>=E4=B8=BB=E9=A2=98<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> Re: [USRP-users] Re: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: Re: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: Re: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: Re: How to use External LO =
on N310 device?<o:p></o:p></span></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><div><div><div><p =
class=3DMsoNormal><span lang=3DEN-US>Forgot to mention earlier: at =
device initialization you have&nbsp;to supply the external LO at 5 =
GHz,<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US>as well as set the device argument as noted. Once the =
device is fully initialized then you =
can<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US>change the center frequency &amp; the supplied LO must be =
2x that. Hope this helps! - =
MLD<o:p></o:p></span></p></div></div></div><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><div><p =
class=3DMsoNormal><span lang=3DEN-US>On Wed, Oct 27, 2021 at 9:51 AM =
Marcus D. Leech &lt;<a =
href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; =
wrote:<o:p></o:p></span></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p =
class=3DMsoNormal><span lang=3DEN-US>On 2021-10-27 03:11, <a =
href=3D"mailto:zeyuan.li@zengyi-tech.com" =
target=3D"_blank">zeyuan.li@zengyi-tech.com</a> =
wrote:<o:p></o:p></span></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I set the correct device arguments,but it doesn=E2=80=99t =
work correctly and also there is no error =
report.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I don=E2=80=99t what can I do next =
.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>So I want to config this argument in mpm.conf file or =
usrp_hwd.conf file to try to use external LO .<o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I couldn=E2=80=99t find this file named =
&quot;usrp-hwd.conf&quot; in =E2=80=9C/usr=E2=80=9D .and also =
=E2=80=9Cmpm.conf=E2=80=9D<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></blockquote><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
lang=3DEN-US>Again, modifying the MPM config file is NOT necessary to =
get external LO to work.<br><br>What frequency are you trying to =
use?<br><br>Can you share the lines of code you use to set up the N310 =
for shared LO operation--including the initial device &quot;make&quot; =
with device arguments, etc.<br><br><o:p></o:p></span></p></div><p =
class=3DMsoNormal><span =
lang=3DEN-US>_______________________________________________<br>USRP-user=
s mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span><=
/p></blockquote></div></div></body></html>
------=_NextPart_000_00B9_01D7CBE6.2FBE0D60--

--===============6323266219423595741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6323266219423595741==--
