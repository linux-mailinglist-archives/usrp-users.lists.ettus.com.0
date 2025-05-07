Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E69AAADEAC
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 14:12:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E16B3861D8
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 08:12:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746619961; bh=mh778HQxRMwrYaxdWbPC0AUJTgIdqBaN/pXHhmVKjuE=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FkAnU+7dTIHFwgx7Y1G0dUvCQxGv4MbEgNCMZFTs0c2z4wWU0D851cZX0+VNLeQYu
	 p34j8JWuInbye6Bn5EVi+KDTAfcCBU8i5yqy0cog2Gv5mL9b+wB07l1LhwxdgSRYIO
	 HR8KOvhAUNEu5K7zib1Aug6t+997NxAv28UYmwIAoN/fJZI4TemBRL0VHFwvCfPxlh
	 DRpkfvgzXz1h2k5+2JsWRbMMO2hptgKJ4RPW33Z1m85RQhqd8+YK+00WZ5kXIYmz0E
	 JM+BjfXmgtiKOm33vTfKM6Jac+/fi72Be7X7HFlzfW+PpkeS4u5JweOtEAJToM6Auy
	 xCR7mX/BYvJyQ==
Received: from mail.appliedradar.com (static-71-117-165-76.prvdri.fios.verizon.net [71.117.165.76])
	by mm2.emwd.com (Postfix) with ESMTPS id DC4CC386176
	for <usrp-users@lists.ettus.com>; Wed,  7 May 2025 08:11:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=appliedradar.com header.i=@appliedradar.com header.b="Kt6Z+P26";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=appliedradar.com;
	s=default; t=1746619901;
	bh=GLvDy8fA64eXDwc9xWbV0xHStiwzAY0jM03yOeSKBiU=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To:From;
	b=Kt6Z+P26XqSHm8zaiOaOMHj/07XnC4s2brZLgsir8MSuEuEYDwwbLL/ZqN4h4x5Hx
	 MeN+Ji7rwHF3H17CCC92PoeU0D0DqMLrZAEsVzzdkbb5wXm5QKGZZbVwMQCjVotqli
	 2MyaDwC7uKizyxfXpLyStWaW0Ign/32bHpLSY2YZRxDMY6TmAUs+N5n6FdQdvotbZq
	 EDnZZR92/1Fy4mwFYfqB194PKWHGCbaDd96z2v84X943czXKdbnHeUihVEGzRimgrP
	 QtnG6rtWxiR2AmgmlYjGyZw1lFpxCudARClU0q2WJu6yrQuGkGH8fy49IEolELcuQk
	 RigOhrcyw0cgA==
Received: from smtpclient.apple (unknown [72.92.244.239])
	by mail.appliedradar.com (Postfix) with ESMTPSA id 1491D83C13;
	Wed,  7 May 2025 08:11:41 -0400 (EDT)
From: Bill weedon <whw@appliedradar.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 7 May 2025 08:11:30 -0400
Message-Id: <AF17408C-3DF3-4C22-9894-18ACB07601FD@appliedradar.com>
References: <MN2PR10MB4095620E255CF2B6123511EBF588A@MN2PR10MB4095.namprd10.prod.outlook.com>
In-Reply-To: <MN2PR10MB4095620E255CF2B6123511EBF588A@MN2PR10MB4095.namprd10.prod.outlook.com>
To: Koop Marian via USRP-users <usrp-users@lists.ettus.com>
X-Mailer: iPhone Mail (22E252)
Message-ID-Hash: JFHP3TOTM443BVICAYJ2ZMNE2G3OFOHW
X-Message-ID-Hash: JFHP3TOTM443BVICAYJ2ZMNE2G3OFOHW
X-MailFrom: whw@appliedradar.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Leech Marcus D." <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JFHP3TOTM443BVICAYJ2ZMNE2G3OFOHW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1426187719776502707=="


--===============1426187719776502707==
Content-Type: multipart/alternative; boundary=Apple-Mail-4F10F020-B3D5-4257-B895-8985595152F9
Content-Transfer-Encoding: 7bit


--Apple-Mail-4F10F020-B3D5-4257-B895-8985595152F9
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Ubuntu 22.04<div><br></div><div>3rd party c=
able that we previously used successfully for another application with this b=
oard</div><div><br></div><div>Yes lights orange when plugged into various US=
B3 and USB2 machines</div><div><br></div><div>Not sure if we have a PC w USB=
3.2 Gen1 ports?</div><div><br></div><div>Behavior is identical on both USB2 a=
nd USB3</div><div><br></div><div>Will look into sideloading that way. That i=
s helpful. I found that FW that you mentioned in Guthub</div><div><br id=3D"=
lineBreakAtBeginningOfSignature"><div dir=3D"ltr">Thanks,<div>Bill Weedon</d=
iv></div><div dir=3D"ltr"><br>On May 7, 2025, at 5:47=E2=80=AFAM, Koop, Mari=
an via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></div><di=
v dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style>@font-face { font-family: Wingdings; }
@font-face { font-family: "Cambria Math"; }
@font-face { font-family: Calibri; }
@font-face { font-family: Aptos; }
@font-face { font-family: Consolas; }
@font-face { font-family: Tahoma; }
p.MsoNormal, li.MsoNormal, div.MsoNormal { margin: 0in; font-size: 10pt; fon=
t-family: Aptos, sans-serif; }
a:link, span.MsoHyperlink { color: blue; text-decoration: underline; }
pre { margin: 0in 0in 0.0001pt; font-size: 10pt; font-family: "Courier New";=
 }
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph { margin: 0in 0=
in 0in 0.5in; font-size: 10pt; font-family: Aptos, sans-serif; }
span.HTMLPreformattedChar { font-family: Consolas; }
span.EmailStyle22 { font-family: Aptos, sans-serif; color: windowtext; }
.MsoChpDefault { font-size: 10pt; }
@page WordSection1 { size: 8.5in 11in; margin: 1in; }
div.WordSection1 { page: WordSection1; }
ol { margin-bottom: 0in; }
ul { margin-bottom: 0in; }</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Bill,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sorry to hear that y=
ou have trouble with your B205.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The B205mini is ship=
ping with a default FX3 bootloader, that is not modified/updated by NI/Ettus=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Q:<o:p></o:p></span>=
</p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 l=
fo1"><span style=3D"font-size:11.0pt">Which Linux Host OS are you using?<o:p=
></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;m=
so-list:l0 level1 lfo1"><span style=3D"font-size:11.0pt">Are you using an NI=
/Ettus supplied USB cable, or a 3<sup>rd</sup> party one?<o:p></o:p></span><=
/li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 leve=
l1 lfo1"><span style=3D"font-size:11.0pt">Does the plugged-in device powers u=
p (onboard LED is lid when device is plugged in)?<o:p></o:p></span></li><li c=
lass=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo1">=
<span style=3D"font-size:11.0pt">Did you try USB 3.2 Gen1 ports (ports rated=
 only for 5Gbps) instead of USB 3.2 Gen 2 ports (ports rated at 10Gbps)?<o:p=
></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;m=
so-list:l0 level1 lfo1"><span style=3D"font-size:11.0pt">Is the behavior ide=
ntical on USB2 and USB3 host ports (to simply check if the device gets detec=
ted on USB2, no USB =E2=80=9CY=E2=80=9D cable should be needed)?<o:p></o:p><=
/span></li></ul>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regarding sideloadin=
g the firmware (and bootloader).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I recently was succe=
ssful sideloading the standard B200 firmware (usrp_b200_fw.hex) via JTAG usi=
ng an Olimex ARM-USB-TINY and OpenOCD.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marian Koop<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif"> Bill weedon &lt;whw@appliedradar.=
com&gt;
<br>
<b>Sent:</b> Wednesday, May 7, 2025 4:35<br>
<b>To:</b> Leech Marcus D. &lt;patchvonbraun@gmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Re: B205mini Discovery Issue<o:p></o=
:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"fo=
nt-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;color:white"><o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"fo=
nt-size:1.0pt;color:white"><o:p></o:p></span></p>
</div>
<pre style=3D"white-space:pre-wrap"><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">Seems we=E2=80=99re on the right track her=
e. $180 programming cable and I also found FX3 source code on github. Need t=
o figure out what compiler to use to compile the FX2 code or upload the raw b=
inary using the $180 programming cable. <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">I also created an NI account and sent in a service request. They quoted $=
450 to fix/replace the B205mini. Seems like a good deal. But since I have tw=
o boards with the same issue thats $900. <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">Thanks,<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">Bill Weedon<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">On May 6, 2025, at 7:45=E2=80=AFPM, Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<o:p></o:p><=
/span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Tahoma&quot;,sans-ser=
if">=EF=BB=BF</span><span style=3D"font-size:12.0pt;font-family:&quot;Arial&=
quot;,sans-serif">On 06/05/2025 18:56, Bill weedon wrote:<o:p></o:p></span><=
/pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; I suspect the device was wiped as you stated. Is there a remedy to b=
ring it back to factory standards? There is a mictor connector with FX3 JTAG=
 but requires mating connector, programmer and binary image.<o:p></o:p></spa=
n></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; Thanks,<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; Bill Weedon<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">There is this:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><a href=3D"https://urldefense.com/v3/__https:/www.ettus.com/all-products/=
jtag-fx3-cable-24/__;!!OkyjEqkqqe9UhNQ!wHMdCLrQxR5vHGjT5iYbeeS60_CDOq5dvzYi9=
8JHJ2Q_3Nygu4JnpjgP-bgPDAFG0CBBVQM0cMQyYT1l$">https://urldefense.com/v3/__ht=
tps://www.ettus.com/all-products/jtag-fx3-cable-24/__;!!OkyjEqkqqe9UhNQ!wHMd=
CLrQxR5vHGjT5iYbeeS60_CDOq5dvzYi98JHJ2Q_3Nygu4JnpjgP-bgPDAFG0CBBVQM0cMQyYT1l=
$</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">There's a bootloader image here:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">/usr/share/uhd/images/usrp_b200_bl.img<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">I don't know if that image can be programmed over JTAG, or some other ima=
ge is required.&nbsp; There is a utility:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">/usr/lib/uhd/utils/b2xx_fx3_utils<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">That is used *when the device actually appears on USB*.&nbsp;&nbsp; In yo=
ur case, "side loading" through JTAG---&gt;FX3 is not something I<o:p></o:p>=
</span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&nbsp; have a procedure for, but, like I said, I'm trying to find out.<o:=
p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; On May 6, 2025, at 5:43=E2=80=AFPM, Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<o:p></=
o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; </span><span style=3D"font-size:12.0pt;font-family:&quot;Tahoma&quot=
;,sans-serif">=EF=BB=BF</span><span style=3D"font-size:12.0pt;font-family:&q=
uot;Arial&quot;,sans-serif">On 06/05/2025 16:55, <a href=3D"mailto:whw@appli=
edradar.com">whw@appliedradar.com</a> wrote:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt;&gt; We tried plugging the unit into several PC=E2=80=99s and laptops=
, and it seems the device is not enumerating. I am starting to think the FX3=
 EEPROM is corrupt. Is there a way for the user to reset the FX3 firmware to=
 factory setting? Is a programming cable, FX3 image, and programmer availabl=
e?<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; I'm trying to find that out.&nbsp; If it won't enumerate, there's no=
 way to give the FX3 a factory-fresh boot image over USB.<o:p></o:p></span><=
/pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; This has happened so rarely in the 15&nbsp; years I've supported USR=
P devices that I don't have a procedure committed to memory.<o:p></o:p></spa=
n></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; Is it possible that this device was "wiped" according to military se=
curity standards for such devices?<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; _______________________________________________<o:p></o:p></span></p=
re>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@l=
ists.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></pre>=

<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">_______________________________________________<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">_______________________________________________<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></pre>
</div>


</div></div></body></html>=

--Apple-Mail-4F10F020-B3D5-4257-B895-8985595152F9--

--===============1426187719776502707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1426187719776502707==--
