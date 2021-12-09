Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A859E46E235
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 06:54:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98D4E384C0A
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 00:54:33 -0500 (EST)
Received: from out28-221.mail.aliyun.com (out28-221.mail.aliyun.com [115.124.28.221])
	by mm2.emwd.com (Postfix) with ESMTPS id 34A493848E7
	for <usrp-users@lists.ettus.com>; Thu,  9 Dec 2021 00:53:36 -0500 (EST)
X-Alimail-AntiSpam: AC=CONTINUE;BC=0.07173318|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_enroll_verification|0.00109247-5.94674e-05-0.998848;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047204;MF=zeyuan.li@zengyi-tech.com;NM=1;PH=DS;RN=3;RT=3;SR=0;TI=SMTPD_---.M6vGB5B_1639029211;
Received: from DESKTOPGVK0E1U(mailfrom:zeyuan.li@zengyi-tech.com fp:SMTPD_---.M6vGB5B_1639029211)
          by smtp.aliyun-inc.com(33.32.109.194);
          Thu, 09 Dec 2021 13:53:32 +0800
From: <zeyuan.li@zengyi-tech.com>
To: "'Rob Kossler'" <rkossler@nd.edu>,
	"'Marcus D. Leech'" <patchvonbraun@gmail.com>
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com> <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com> <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com> <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com> <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com> <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com> <007601d7cae0$bd7649d0$3862dd70$@zengyi-tech.com> <ebb155d7-5462-260b-016f-3aa0a469dd52@gmail.com> <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com> <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com> <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com> <00bb01d7ea5f$f907a720$eb16f560$@zengyi-tech.com> <815c8938-9ece-3cf3-ff13-11834c9d51f7@gmail.com> <01a301d7ec02$0612e3f0$1238abd0$@zengyi-tech.com> <a2256403-9562-27c3-f50e-bd221a684014@gmail.com> <CAB__hTQWnQpDwyepWJWUs8S2vjin8DBVqSr07BUFfaF=jByWqQ@mail.gmail.com>
In-Reply-To: <CAB__hTQWnQpDwyepWJWUs8S2vjin8DBVqSr07BUFfaF=jByWqQ@mail.gmail.com>
Date: Thu, 9 Dec 2021 13:53:31 +0800
Message-ID: <009801d7ecc1$1909e0c0$4b1da240$@zengyi-tech.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: zh-cn
Thread-Index: AQE3ddRZwZbIOH3LEMsp8sFULZxREAKNVLCeAgJfVhQBhNs5cAGVISrgApYybY0CRTQeoAFaJrwAAdXk688CKCkBCgGo3CVIAZ7Pp8IAyQ9zdwE3huBYAjyf74UCOcUyLKyNs94A
Message-ID-Hash: XBFO5CNXP5WSO7ZTR7OHV5VQHJCKPKCD
X-Message-ID-Hash: XBFO5CNXP5WSO7ZTR7OHV5VQHJCKPKCD
X-MailFrom: zeyuan.li@zengyi-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: 'USRP list' <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?562U5aSNOiBSZTog562U5aSNOiBSZTog562U5aSNOiBSZTog562U5aSNOiBSZTog562U5aSNOiDnrZTlpI06IFJlOiDnrZTlpI06IFJlOiBIb3cgdG8gdXNlIEV4dGVybmFsIExPIG9uIE4zMTAgZGV2aWNlPw==?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XBFO5CNXP5WSO7ZTR7OHV5VQHJCKPKCD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6865163034959822601=="

This is a multipart message in MIME format.

--===============6865163034959822601==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0099_01D7ED04.272E0B20"
Content-Language: zh-cn

This is a multipart message in MIME format.

------=_NextPart_000_0099_01D7ED04.272E0B20
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus=EF=BC=8CRob=EF=BC=9A

       Is such as that I used GNU Radio Software.Could you please show =
me an example code to use N310 External LO ?

I want to control sent singal frequency by external signal source =
frequency.

And if I change external signal source frequency  of the device such as =
NI PXIe-5644 VST,N310 signal center frequency will also be changed to =
half of External LO .

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

=E5=8F=91=E4=BB=B6=E4=BA=BA: Rob Kossler <rkossler@nd.edu>=20
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2021=E5=B9=B412=E6=9C=889=E6=97=A5 =
1:14
=E6=94=B6=E4=BB=B6=E4=BA=BA: Marcus D. Leech <patchvonbraun@gmail.com>
=E6=8A=84=E9=80=81: zeyuan.li@zengyi-tech.com; USRP list =
<usrp-users@lists.ettus.com>
=E4=B8=BB=E9=A2=98: [USRP-users] Re: =E7=AD=94=E5=A4=8D: Re: =
=E7=AD=94=E5=A4=8D: Re: =E7=AD=94=E5=A4=8D: Re: =E7=AD=94=E5=A4=8D: =
=E7=AD=94=E5=A4=8D: Re: =E7=AD=94=E5=A4=8D: Re: How to use External LO =
on N310 device?

=20

I searched the code for "rx_lo_source=3Dexternal" and =
"tx_lo_source=3Dexternal", but didn't find anything related. It seems =
that the device args should include these. =20

=20

On Wed, Dec 8, 2021 at 11:02 AM Marcus D. Leech <patchvonbraun@gmail.com =
<mailto:patchvonbraun@gmail.com> > wrote:

On 2021-12-08 02:05, zeyuan.li@zengyi-tech.com =
<mailto:zeyuan.li@zengyi-tech.com>  wrote:

I do not set TX or RX.This is my python code.Please give me some =
suggestions.

Thinks.

=20

=20

=20

Ah, you're using Gnu Radio.  I'll have to think about how to meet the =
constraints of external-LO use when using Gnu Radio.

Has anyone else done this?



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_000_0099_01D7ED04.272E0B20
Content-Type: text/html;
	charset="UTF-8"
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
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>Marcus</span><s=
pan =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=EF=BC=8C<span =
lang=3DEN-US>Rob</span>=EF=BC=9A<span =
lang=3DEN-US><o:p></o:p></span></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Is such as that I used GNU Radio Software.Could =
you please show me an example code to use N310 External LO =
?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>I want to =
control sent singal frequency by external signal source =
frequency.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>And if I =
change external signal source frequency =C2=A0of the device such as NI =
PXIe-5644 VST,N310 signal center frequency will also be changed to half =
of External LO .<o:p></o:p></span></p><p class=3DMsoNormal><span =
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
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'> Rob Kossler =
&lt;rkossler@nd.edu&gt; <br></span><b><span =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>=E5=8F=91=E9=80=
=81=E6=97=B6=E9=97=B4<span lang=3DEN-US>:</span></span></b><span =
lang=3DEN-US style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'> =
2021</span><span =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>=E5=B9=B4<span =
lang=3DEN-US>12</span>=E6=9C=88<span lang=3DEN-US>9</span>=E6=97=A5<span =
lang=3DEN-US> 1:14<br></span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> Marcus D. Leech =
&lt;patchvonbraun@gmail.com&gt;<br></span><b>=E6=8A=84=E9=80=81<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> zeyuan.li@zengyi-tech.com; =
USRP list =
&lt;usrp-users@lists.ettus.com&gt;<br></span><b>=E4=B8=BB=E9=A2=98<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> [USRP-users] Re: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: Re: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: Re: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: Re: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: Re: =
</span>=E7=AD=94=E5=A4=8D<span lang=3DEN-US>: Re: How to use External LO =
on N310 device?<o:p></o:p></span></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><p class=3DMsoNormal><span =
lang=3DEN-US>I searched the code for &quot;rx_lo_source=3Dexternal&quot; =
and &quot;tx_lo_source=3Dexternal&quot;, but didn't find&nbsp;anything =
related. It seems that the device args should include =
these.&nbsp;&nbsp;<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><div><p =
class=3DMsoNormal><span lang=3DEN-US>On Wed, Dec 8, 2021 at 11:02 AM =
Marcus D. Leech &lt;<a =
href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; =
wrote:<o:p></o:p></span></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p =
class=3DMsoNormal><span lang=3DEN-US>On 2021-12-08 02:05, <a =
href=3D"mailto:zeyuan.li@zengyi-tech.com" =
target=3D"_blank">zeyuan.li@zengyi-tech.com</a> =
wrote:<o:p></o:p></span></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>I =
do not set TX or RX.This is my python code.Please give me some =
suggestions.</span><span lang=3DEN-US><o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>Thinks.</span><=
span lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>&nbsp;</span><s=
pan lang=3DEN-US><o:p></o:p></span></p><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></div></blockquote><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span lang=3DEN-US>Ah, =
you're using Gnu Radio.&nbsp; I'll have to think about how to meet the =
constraints of external-LO use when using Gnu Radio.<br><br>Has anyone =
else done this?<br><br><o:p></o:p></span></p></div><p =
class=3DMsoNormal><span =
lang=3DEN-US>_______________________________________________<br>USRP-user=
s mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span><=
/p></blockquote></div></div></body></html>
------=_NextPart_000_0099_01D7ED04.272E0B20--

--===============6865163034959822601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6865163034959822601==--
