Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB9C9C16FD
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 08:21:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE9C53864AF
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 02:21:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731050466; bh=KtWfCPjVaFnOOXMtIQfh9DgzgbgX9qmjO9BRKZN5Olg=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=XLf+h2BFPHPvJvs14uv3VO0ve8XmyzKbVNF+yMuyvRislf+tSVyHY+NUwiBCrGSq+
	 Zo39mlg+hHv2Bz9SjnYXD7/qz2UHV+mSli0GhHsd6bZ8pxWBW9SzYSlj5DOS3NtiXA
	 +XMeJYYcU0th9QuejwP5cfppvXp05/Xkwo0yz5QOnKZ8mh1TPWjZVlUOWsUKEsyDTQ
	 hKmRdwSSE/q0fBCERJ8t+jEUG27xLy0jHen1bLnN09AeugLbJM3hyHkYFjmEyhBaNx
	 xB/JJzrjXRvSiNu7NMkhIVNW+CzI6MHSnesKqEFEQoIyW8kuaU5iC8BXeRL07p6e0B
	 7wx1rIBe67c8A==
Received: from resqmta-h2p-567038.sys.comcast.net (resqmta-h2p-567038.sys.comcast.net [96.102.200.7])
	by mm2.emwd.com (Postfix) with ESMTPS id A0E04386494
	for <usrp-users@lists.ettus.com>; Fri,  8 Nov 2024 02:20:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="p1wWhSZT";
	dkim-atps=neutral
Received: from resomta-h2p-554995.sys.comcast.net ([96.102.179.207])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resqmta-h2p-567038.sys.comcast.net with ESMTPS
	id 9JI0tQkZZeKNY9JINtAkCP; Fri, 08 Nov 2024 07:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1731050439;
	bh=8coZQnAeVmD1N/EiwffZyOQZClpNiWxMycXXsotK3Os=;
	h=Received:Received:Content-Type:Message-ID:Date:MIME-Version:
	 Subject:To:From:Xfinity-Spam-Result;
	b=p1wWhSZTseV1Gz2DeJhLDCUJ155zaRZvlrOwdsneedlNzEWcPom/YrwP77xA/iWou
	 CJ4octgp6yE6B+vd6f8mvBhq7lAqUGU9ohsXkjxL+gliZseuQNpjX99+gPLH1Yu1U0
	 WJH9eEam7OILYQaq1ehQwANfmfWbZrJLkVN8jjCGcj6q8EgHbNweXDtzZ6dk9xvknD
	 2mtYiqvKpdUcdO+jqQgnHTLXf270ElRdq9vu8AAy/HSVTkWB+L4XlEYuJ4UZT1F0sD
	 V7E7A9vmqHSrTh3oeQE+wWd0cNbkA2LDDKKmdLkpJIDsoqZndNUs19mQyx5bAP0p2O
	 sQFLJGmYwLldg==
Received: from [IPV6:2601:647:4b00:aafb:a205:8e06:7d88:c08b]
 ([IPv6:2601:647:4b00:aafb:a205:8e06:7d88:c08b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-h2p-554995.sys.comcast.net with ESMTPSA
	id 9JI0tawgfLhCS9JI1tbMEK; Fri, 08 Nov 2024 07:20:17 +0000
Message-ID: <9afc7c04-80ce-46d4-a417-baf2104cbd62@comcast.net>
Date: Thu, 7 Nov 2024 23:20:16 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <GV1P193MB22957B8CB9CFC455A2A3CCB1CB5C2@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
 <0b46820e-b517-4ae1-973a-c5d624d80150@comcast.net>
 <GV1P193MB2295DCAE10E03F6F82292FBDCB5D2@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
 <3a95d8db-1b28-4bb2-a90a-a4f37da12bcd@gmail.com>
Content-Language: en-US
In-Reply-To: <3a95d8db-1b28-4bb2-a90a-a4f37da12bcd@gmail.com>
X-CMAE-Envelope: MS4xfGdgfTa1FciC1zEL1RXqonp0zt7/vzl0e4TaAdDDm78Erikk475Nl/mdwnkCl0phn5miIUr9bu1ciDjYJyZuuB5hsN3nN6wtAO/ojoEFjUt5K1PnfuW9
 ZBry5sYH+tRBhqsHEEOkhZgyE/shQwezPzDm0nEwBiwaveKYMLM5nLOivl9ES3ULEQk9Mc7lYip/Zq9jmosOwvQ4VWsBf6aJn+vAPBNA6EG+L8ER7yCLA5A2
 E+rKbAwXYBuqdTzjfAYXgF3GDsUiQyYDarjMIp0kE7Siibo9Fpar4wLET6fmDWFKZ7Y+ByLVJzoxEDGaTwn5zg==
Message-ID-Hash: A3HA3BK4MW2PK2K5CRNWPBHL2HETUSMQ
X-Message-ID-Hash: A3HA3BK4MW2PK2K5CRNWPBHL2HETUSMQ
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How do I mitigate LO signal in my transmission?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3HA3BK4MW2PK2K5CRNWPBHL2HETUSMQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============1403572103538933110=="

This is a multi-part message in MIME format.
--===============1403572103538933110==
Content-Type: multipart/alternative;
 boundary="------------Q7LRReoFs9bwQMqu90bnQ9Sr"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Q7LRReoFs9bwQMqu90bnQ9Sr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Yup, that's some good advice. Here's a B210 with the TX gain set to 60.=20
The first plot is with the peak IQ levels around +/- 0.62. The second=20
plot is with the peak IQ levels around +/- 0.83. The LO leakage stays=20
the same, but you get a few dB more signal.


I have a little utility block that prints peak IQ levels. You would just=20
attach it to the output of the block connected to the UHD sink.


https://github.com/drmpeg/gr-iqlevels


The output looks like this:


peak real =3D +6.209883e-01, -6.199704e-01, 0, 0
peak imag =3D +6.208171e-01, -6.222230e-01, 0, 0


It prints the peak positive, peak negative and the number of times each=20
went over 1.0.


0.62 level


0.83 level


Ron


On 11/7/24 21:40, Marcus D. Leech wrote:
> On 07/11/2024 22:23, Brais Ares Fern=C3=A1ndez wrote:
>> Nice, thank you for the tips. I understand it better now.
>>
>> I forgot to mention the specific daughterboard. It's a CBX.
>> Should I expect a noticeable difference in behavior from an SBX or=20
>> even a B210?
>>
>> Regards.
> THe mixers involved will all have different LO leakage specs.
>
> The other thing you didn't mention was what the baseband magnitudes=20
> are.=C2=A0 The LO leakage will generally be fixed,
> =C2=A0 for a given LO input power level, but the "free variable" here c=
an=20
> be the baseband magnitude.=C2=A0 If you bump it up a bit,
> =C2=A0 but not at levels where anything exceeds about 0.85-0.9, the act=
ual=20
> output carrier will be stronger relative to
> =C2=A0 the LO leakage.
>
--------------Q7LRReoFs9bwQMqu90bnQ9Sr
Content-Type: multipart/related;
 boundary="------------aqhHuWiye57NstEf0XrkQOoS"

--------------aqhHuWiye57NstEf0XrkQOoS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Yup, that's some good advice. Here's a B210 with the TX gain set
      to 60. The first plot is with the peak IQ levels around +/- 0.62.
      The second plot is with the peak IQ levels around +/- 0.83. The LO
      leakage stays the same, but you get a few dB more signal.</p>
    <p><br>
    </p>
    <p>I have a little utility block that prints peak IQ levels. You
      would just attach it to the output of the block connected to the
      UHD sink.</p>
    <p><br>
    </p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://github.com/drmp=
eg/gr-iqlevels">https://github.com/drmpeg/gr-iqlevels</a></p>
    <p><br>
    </p>
    <p>The output looks like this:</p>
    <p><br>
    </p>
    <p>peak real =3D +6.209883e-01, -6.199704e-01, 0, 0<br>
      peak imag =3D +6.208171e-01, -6.222230e-01, 0, 0</p>
    <p><br>
    </p>
    <p>It prints the peak positive, peak negative and the number of
      times each went over 1.0.</p>
    <p><br>
    </p>
    <img moz-do-not-send=3D"false"
      src=3D"cid:part1.bAPsX3jc.B8AjfJM0@comcast.net" alt=3D"0.62 level"
      width=3D"800" height=3D"480">
    <p><br>
    </p>
    <img moz-do-not-send=3D"false"
      src=3D"cid:part2.lZJ5zLdN.a0Q03MDN@comcast.net" alt=3D"0.83 level"
      width=3D"800" height=3D"480">
    <p><br>
    </p>
    <p>Ron<br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 11/7/24 21:40, Marcus D. Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:3a95d8db-1b28-4bb2-a90a-a4f37da12bcd@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 07/11/2024 22:23, Brais Ares
        Fern=C3=A1ndez wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:GV1P193MB2295DCAE10E03F6F82292FBDCB5D2@GV1P193MB2295.EURP193.=
PROD.OUTLOOK.COM">
        <meta http-equiv=3D"Content-Type"
          content=3D"text/html; charset=3DUTF-8">
        <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;=
margin-bottom:0;}</style>
        <div class=3D"elementToProof"
style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 10pt; colo=
r: rgb(0, 0, 0);">
          Nice, thank you for the tips. I understand it better now.</div>
        <div class=3D"elementToProof"
style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 10pt; colo=
r: rgb(0, 0, 0);">
          <br>
        </div>
        <div class=3D"elementToProof"
style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 10pt; colo=
r: rgb(0, 0, 0);">
          I forgot to mention the specific daughterboard. It's a CBX.=C2=A0=
</div>
        <div class=3D"elementToProof"
style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 10pt; colo=
r: rgb(0, 0, 0);">
          Should I expect a noticeable difference in behavior from an
          SBX or even a B210?</div>
        <div class=3D"elementToProof"
style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 10pt; colo=
r: rgb(0, 0, 0);">
          <br>
        </div>
        <div class=3D"elementToProof"
style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 10pt; colo=
r: rgb(0, 0, 0);">
          Regards.</div>
      </blockquote>
      THe mixers involved will all have different LO leakage specs.<br>
      <br>
      The other thing you didn't mention was what the baseband
      magnitudes are.=C2=A0 The LO leakage will generally be fixed,<br>
      =C2=A0 for a given LO input power level, but the "free variable" he=
re
      can be the baseband magnitude.=C2=A0 If you bump it up a bit,<br>
      =C2=A0 but not at levels where anything exceeds about 0.85-0.9, the
      actual output carrier will be stronger relative to<br>
      =C2=A0 the LO leakage.<br>
      <br>
    </blockquote>
  </body>
</html>
--------------aqhHuWiye57NstEf0XrkQOoS
Content-Type: image/png; name="62.png"
Content-Disposition: inline; filename="62.png"
Content-Id: <part1.bAPsX3jc.B8AjfJM0@comcast.net>
Content-Transfer-Encoding: base64

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
RBYWFi7/9PL95+5vtVq//Mu//KnNT3mr3PXJuy7/9LLXPvj7//Pvf2rzU/2qsnb7WqlUunT5
0qc2P7V5ZtPb7LiFI56BMVBka2DCr73Ixeg7kiPyLrkIX5wBADPGbhuDM1gicvH/vHjDDTds
ntn89h99227Yjzz8yN7enhdj6dbX17/6la9+6dEvvXrp1WcvPDtUVfbf3m+1WptnNrvd7pf+
xZe+/xffv/zTy2M9eL+ni9/ZJVwy1NZSfDfzHVMEBU8LTYXACxj5NHBBHy84gBlmO2KeMPWS
iGEaHv78w5WTlW9981uXf3rZC3oe+/pjj3/j8Yc+99C3vvktfclXL726vrYuInv7e3bDHtj5
Xec4zvr6+u9//fe3zm3df+7++8/d/9DnHorJeI1ulG7LfgdwPa4adoP6pVX+6npsF77CPHJu
ZGGgtv32PuJLMavCffyzDYXn/E8WOMDxHUv86wxgrLrP3OVPL5x/Pe/qRNRqrNXrXUi4bKi2
8koiMli1s7XHv/G43uu8/k49vNiZe86sr63/8KUfLiwsnF4/ffGlizE79homTdP0Omx5qz93
4bnv/8X3b7jhhvW1ddu2i3PhYWS3Ej/iCfw6T/7TfOG4cLleEjNXBuVg+lVy4I4ip2dJTN4l
3d80ZkeRux79TzalxnQsw77OAMah+8xdgTgmMqxJsdm8j2xIxy8kjMhgPf2/PX3/ufufvfBs
9bbq63/7+vraunfd3/f/4vv+Mk88+cTO3+6IyOY9m088+YRlWV4fLH3TW+e2Dq4eeJ2rvvq7
XxWR+8/dr2e5Ns9srt2+9tzzz5XMkmVZtm1P5hWISU48+93hGjoBAJgxX/jtL6RYy08LeYFR
95m7RkkUZRtdTSajpoxyySwFxnMP8kYT9TuAf/TRR/pAo17hY19/7LGvP+Yt5nWE/+ijj37+
85+LiGmau3u7fmvaV/7lV7zFXr306s9//nM/h//Y1x/znna73b+8+Jd+cktEzj96PpOjjezV
HjM9jQFW7b5a3lWgzgVFnakzdabOwwp/D+rfyOf/8An54r/XH70v2VBh5GKBcr8kMLd73FAb
SVK9+BUj95JkX2f+l1c37t7wX6voW+VceP7ChecvJJml98r6wiO9mNdxnNPrp/3yJ//4ySf/
+Mnwpr71zW8FOnVljiv4AACYsEDGSE9HhTNb8XNTbCR+3fgVY/biz+q3L9sxbtEuJJyjmz2H
+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
AABJRU5ErkJggg==
--------------aqhHuWiye57NstEf0XrkQOoS
Content-Type: image/png; name="83.png"
Content-Disposition: inline; filename="83.png"
Content-Id: <part2.lZJ5zLdN.a0Q03MDN@comcast.net>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAyAAAAHgCAIAAADSZZ6iAAAABGdBTUEAALGPC/xhBQAAACBj
SFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAABmJLR0QA/wD/AP+g
vaeTAAAACXBIWXMAAAGKAAABigEzlzBYAABacklEQVR42u3df4wk53ng92ecuUMNMDpUE7O4
bmYJTDkrHJshAc4slXAY6sAd2YI15DraIRjApBVApHKGVuI5Z0kHxLRyOInCIaFowzmSgmxy
CZwlEomsZRCaQ0Myd3VnHocIOTPEkVETJqFq3G52GuCCXbAa1y/gQiZ/VE/NO/Wrq6uru6q7
vx80dqvf+vVWT3f108/71ltzIiL/UpC/f1F0BQAAGJCxaDz4wIMXnr/gl5x/9Pwz//qZous1
eeY3H9iU94quRaHMRXNvb2/vnb2iKwIAAKbEvPxd0VUomtNx6rfVRYQYCwAA5GK+6AqUwN+J
+jtVv60u87L3NjEWAAAY1rxyVeSMB9f2rWpb3Lj1RFzZdxb2rpqNVkV1e8X1WnfzDju8sN2q
vLBd8wuqn5DV5f21U22r5hjzolzZbxt7zdp+x7hred++Xrm4XQtXy5gX60R37VRr1Wqbi8qY
FxFxOkZj33jjw1rjasU5rIaxIA/eYdeWusfqPy9KLfz4nWpzfyHiiH4p9XrdmDe239wu+o8C
AAAmW2wGa2V5/5abnL7r3y/yyp71wutVp7sgIuaiuqveCi9W+4TyA6yVm9oP3m3rG18QqSwq
v2RFORffqgViO3Ohu3FH66FP7cv8sdBrwVC1JVm/rfVGo/rc61arvSAihshdn2zXlkL1d403
PjSbEhFgKVeptrI+acm8bL9OjAUAALKbj8tR7V2tLCyIpcUoXWWow4WNeVkweoHOvSu2UvLC
X1vKFceRXdu0TqjK4mEY5Br2dWPXrng7WrHaXzvb8Od2ldFyjO7fSe0TqmL2ChfmlXWi3bhS
8XdtGN1H7rHXbzsK3fYdo/1LY+HvSXVJLcwrEbmr3qpV1OMv1VvtBdXt7tqVVVG1paNorN0x
GlfMfUdi03IizkeOZVkixFgAACC7/+yTpz4ZOePdpvHG35y46x9d/4ThikhXGVt7tRfeuOmt
Dz+x/Te1D1ufOPEJ14+TrBPqjb9ZdP7TwvXOwuX3TPX/zf1X/4Xjzfr5/7v4P/3v9bc+PCEi
1Ur7f/ycXbuh483ad4znLlsX/u1Nr/6HE43/WJmfF+sfdkREfkU++njh3at+gNX979Za/+2n
rvaeucal/2fp+z+xfrRdu9Q4of7TXP0/V39v3hWRyqK6yXQv/82i6y689YvKf/iPi3f9I2fh
7/fq//3XrH/zb3/V6SxIIvWfVO0f1paWlprNZtF/HQAAxmr+78/f9l/epl/19an/+lNv/d9v
FV2vyTPfdbuxM38pShkiSkSUK3tNY9c2RAwRETHs6/LYuV6masFQlUXV2O9tqu0Y/jaUknZH
RLoLInfd7FhVxyvvKuO5n1qXGqb3dPeKsXvFEhEvTbWy3H7hr6ve5uo3qc1P7fsbfOMD8+lX
rbYSEel25IfbVZmXR870On6tfrK1ZlUuNUREnF+Kn3JTSlqOJB2spvtRt1arnbnnzOWfXS76
DwQAmGDLy8veRPof7T/44Q/GU7fffui3C3hFZsZ8QnuZzCu9w5Mxf6xxre0YjpLK4uFz92iu
cbyblFdummrtVNsv226Y2x8Ygb0//WqtfpNTM1WlomReiTJkXu5advzmyK4yLr5daXeOrXVx
u7p+27512Bq4cfv+pXfNXk20AzUkqXEwYH9/v1arnfm1M5f/ihgLAJDF8vLyV778FRF5+ntP
p1zlBz/8wdjinnHuawbFXkUoIgvHwxHlKn/hiiHrt+5Xzd6srmvsd8Sfq0IriohZUdaJo33t
NhfaHfHSY759R55+tbay3N1rLnSVKFfVDKmfPArLGleMxhUjUGfVkZ/bprXU66Fl1dSCoQJB
mLenhIMNs6/YxFgAgGz86Cq9MUc8v/3QbxNjjU7acbAqhmzc3raWut7gCLUltVbv9S4Xka23
THvfSN5CzVBHiSjXaB0PgIzDilx61/TyT8a8GPNiGKpWOYqK9h0jHDmJSMsRcXtHYxiyfEK1
O8fjMFdElJ7SSsPLY238xsbWX26N5vUHAEwhL7qKTFwtLy9PcR/fg4ODcOHc3FzR9SpAUhNh
11VHc+fVXXV1Vz1isVfeMi/8tKISckOuiIix2D1Woo4a7CqL6uEz7d5VhG6vXiKy7xhvvL9g
aEGg04lu5tt3FrpiLIgSkQWRhXklbrD9UW/ETG//yn7tptrGb2xs/dVWhtWBUvHPffr5LrKw
79yDg4O4k6Z+hvWXybCXQWubUKW4uX1XiTuKhGPBjPA7V0mof5UfXYUDqYRZ0Q5EcnmX5bUd
pJbURGgcjye6yliYV3rO69K75qV3Km80DEfJscY+rS+5cg8b5kL78XdtzMv9n44YPUtc2fvQ
imxwDNF7rys53Kk6vrWBmgh9tm1bJ61eHosYCxNLDyb86cjC5FUk5keqLuV2Bq1YwnaSqxQ5
t+8q4X0lHAVmkN8CGMhU+bkrPQgLLzDFeSw+HZKcwdIjm64ynv6pqTrytQccv2XQvmpsvWUk
ryjSyxu1nKOCBUMZRlfc3rptpX68bVpVtWpprYHXjUvvGvttUVrsZBgqssKVRVmQo/bH/V9G
hFNdCWawHjzTXpiXS+8u2K0+TYd207aWrc37Ni/+xUViLEyoyFNeXD4pEE+E5waik8gYaJiK
Dblkygr3jRSBNMJ9rfr2vhoqxvLftnODlBTN+7j5n7s06e3IVSJXT5n81j/14V96ennfvfSV
mMHSppUr9lW5/O6CdVI99OneKpufduyWXHwreWSpXtf4/fZCu2P4Q2fVq2pLlBeKOY48/VJl
wZAnvrh/i9VrKHzup+bW3oIxL7ZjWDf11qqZyjCUE+qGtbx0lFpzlNhXRbmhUMzt6pHfyrI8
csapLCpj3nzy5Yr00/iwQYyFGZF8EukbqCW3Bo5CcrSUPrIcaHfjOTRMBD+DFdfvSudfV5g9
upo7Pp2mZLwi+wmEZwWexqWlB/ohlLDBhLnJa2WT2Mn9eBixYIiIPPdqpV5Vq59UIlJZVF97
wLE/kr1mn9E7RcS+Lnu2rN/We7q+ol7Y7tqtBRFRrrQ6Ih3xI6euK/b13tPdD4/Wqt8k9Zu6
241ju6uaoqe+dj/wmiylmxgGPXjY66txNW3Pd/JYmA7ZeiNlyDMNep5KvzwhDsrAj6X8UOnp
7z2dnJryGg1H2D44d/hviZOzcWmhg4MDPRfuL5w+wErYYGDvgYgqXO7tV//xNug551d6Xb+j
Hkp1u393tGhXibjSui7P/ZXZ7vSCksqieuwBp7rYPbZi5yjcUYeFjiOX3jkKZWpL6uFfV4Yc
rWgaXevoftCHw1a5sv2use8c7e6hux3TOLa7r3yurd8S54XLxuGso5s9KxHnl/4q3a+dba+v
OCKy+4HxxgeS8CIEHvaHtlJq877N1NdfArNl/HFP5I9Uz6DbybAWZlZToxd6MVZc7ytvgZH3
vvKyVnOFtQ/OacKzgpWN/+gl9FVIOvp+G+xb81xehF/put3Ih8x3a0tS+URvOcNQt5xUIt2u
2728Jy9cPgqVbrHUH/yWUz/ZFumKdA2ja1WPdlA1xVrqeitubRuX9o5WvP9Tzne/6Kzd3K4u
dc/c1n7qy44eJylRXk12m/Lcq0drrd+mHv+Cs3Zzu2p26ye73/7C/v1rjj/3h5eNN973Rmzv
1paUedgiaRpqY8U5c1v74c+1f/AN55FfdxbmRUS23zMcR+JehMjHzz/8ebvT3jy3aRiDDfoA
lMGo01f5Vizlkv7J1P+hmeEsmXItkmdIlibGGuHuDxKfYoxiO7k/ds7Z+JRoN2CWh3/dWbvZ
ePIl4433jOdelZVTxl313tz1FbXySdnaVlt7xmMPKKt2FCfdUlM/+H1na1v+4M/Mdkcef9Ew
F8VrYZR5Wf+UWqsrJYYxrxYC4crfHbVRvnDZqJnGI587XGtFrX1SKdeQeakYR72vXnnLePJH
priyYMi3v+Csrxxtc8GQzTNq89NK5mXBTz65culd6Q5+ZaH9oS2nZOPsxtbLW0pluTIRKMQY
oqts8ccw0RVX9qFs/BhL74+VPa7Sg6S5481/4QbBQEm52wp7Ve53/knIK+c+7Fa21sBIsZ3c
rZNH0ZVnwZD6Tar2CUO5at+Rp18yrBPi55wqi8o6adQ+lFtuOjaUg8xLZVHVl3vDfjauyle/
Z3ztnNy/1ltsQbsA8NKeUV062sLR0PAdefxHht2Sr5yTmqkCa4lIV8mFV42nXzXand5QWPVl
7TY+Xv3ng13O3vjAsFsZx25ovN+on6pvntu8+NJFYixMBD3HI8c7HIQLE+bGbdxP5oeXT7hy
J24vkaukr8/wkusMJPNjLO9p+lvlBM2lK0womYvfTtH8fk6BQtE+gHHRVVxoFbfBQasRKM9w
EojNYF18XRrNYBOYUrJr9xJLl96Tx/+NrN52OJ7nvDSasmvL068aRqh/UuPqUTrKvipf/57x
wmVjfUWtLIu5KI6SRlPeeFcuvWesnpKNT/UuWtTrpjry3E+NrbdkfUXWTolVFcMQ5Yp9XRof
ytaeYbeOlu8qeeGvxKomNeEZ83JpT9pOltFHewf1fkNENs9tXnz5ot7tDCin9BfT6YFRyq3p
Twe9ai9uVpreG0POzX0VwBeIsdIY871rynCfnECCKnAmCY+tIKEfP+FwKuEaxjTVyOszPmcu
mWN9LadO/ea6ZVkXXyLGAgAckzDae4If/PAH46leZHRlLBoPPvDghecv+CXnHz3/zL9+ZjxV
ipNjy12G/WbbNdfCDavxfkNc2Ty3ufXyluM4RVcHAFAW2fpdFZ5VQkC2wG6e8ZyG13i/oVzl
9XknxgIAYAoMOWjLfLYu3gjw+mMRYwEAkLtC+j4OuVMyWLlpvNcQVzbObmy9uuVcd4quDgAA
KMyvFF2BqdJ4v7G3t7d5dpNLBwAAmGXza3evFV2HoIX5ha7bLboW2dlX7JXbV4quBQAAWdhX
7KKrgJE5/+j5oqsAAAD4Rs6IJkIAAICcMQ4WgIy4kwwAxCHAAgAAqazds1H79Ka5ZAy/qamh
lHKa9u7Lz7WutvRyAqwIkXd8TLN839/xkUsmr55hFX0x/Za9KQ9n6sW9pPodhYd8icJbmL4/
mX6PsEC1A/dmDt9QLK/Dyfw6A8jGWll74Xpdrhddj5KpL9Xrp95IG2Ct3L6ycXZDRFRH/fil
H2cb73+i6V8SCd+46b8wIr/Ck7/XM6zS93AGWmtG6NHMkEP3Rm5hxv9kkbdrzWuzgZIco2QA
YaZpSGv4zUwb25GVWi1QGN3J/Yknn9jd2338W48//q3Hv/uH37Vt++EvPuzNeviLD3/88cfJ
ezJN87VLrz32zceKPuT8HWgC5X3XHdvpPly9hCUDy6dfd0LpAXHCHzHzi5Dte31qXnb9hQ3/
9sjxI0D8BKA8lCtm1TKMYy2nEQHW8vLy13/v67Ztr66szs3NrZ9Zb7fbz114zjRNEXnoCw9V
KpXkPa3cvrJ+Zr3o482f/4UR/nouz7ne++JJny3Qlx903SmTSyiQLbqa5Zc9m/J84gBARGSp
5oVJvogAy1q2ROTHL/147509Ebn8s8vf+fZ3Ll2+ZC1bD3/xYW/uY998bHl5WUS+9s++9tql
17yHl+VaXl5+6AsPicj6mfWHv/jw8vLyY9987Mw9Z7yNP/zFh/3M1srtK39+8c9fu/Tan1/8
883Pbxb92gTpmap8z+bj+fEdbm2MzL2NKMGADFL+ycpAT3kGJgBgBqnFasU8ln6KCLC8uOqR
Lz7yxJNPeCOSP/lHT35m/TN77+w99IWHLMsSkce/9bi1bD3x5BPf/cPvesusn1l/7sJzZ+45
Yy1bjzz8iFfy0Bcespatx7/1+F2fvsvb+ENfeOjxbz0uh82I95+7X0TuP3f/j1/6sR+ElYSf
qQoYqAGuPN+Oc5qi64JUyv8ni6xeZG93T0k+CwCQu5aq9M9gOY7jxT1f/72v7+7tfvzxx88+
96yXr/rM+mcuXb4kInNzc5d/dvn+c/e32+1f/dVf/cz6Z7xV7vr0XZd/dtlrH/yD//kPPrP+
mbiqrNy+UqlULl2+9Jn1z6yfWfc2O2rhiKdvDBTZGpjyay9yMfqOFIi8SyHCF2cAwJSxO0b/
DJaIXPw/L95www3rZ9a/+4fftZv2Iw8/sru768VYutXV1a9/7etfefQrr1167dkLzw5Ulb13
9trt9vqZ9YODg6/806/88M9+ePlnl0d68H5PF7+zS7hkoK1l+G7mO6YMSp4WmgiBFzDyaeCC
Pl5wAFPMdsQ8YeolEcM0PPzFh2sna9/59ncu/+yyF/Q89s3HHv/W4w994aHvfPs7+pKvXXpt
dWVVRHb3du2m3bfzu85xnNXV1T/45h9sntu8/9z995+7/6EvPJSQ8RreMN2W/Q7gelw16Ab1
S6v81fXYLnyFeeTcyMJAbeP2PuRLMa3CffzzDYVn/E8WOMDRHUvy6wxgpA6eucufnjv/RtHV
iajVSKvXu5Bw0VAd5ZVEZLA2zm48/q3H9V7njXcb4cXO3HNmdWX1xy/9eG5u7vTq6YsvXUzY
sdcwaZqm12HLW/25C8/98M9+eMMNN6yurNq2XZ4LDyO7lfgRT+DXefqf5nPHhcv1koS50i8H
E1fJvjuKnJ4mCXmXbH/ThB1F7nr4P9mEGtGxDPo6AxiFg2fuCsQxkWFNhs0WfWQDOn4hYUQG
6+n/7en7z93/7IVn67fV3/jrN1ZXVr3r/n74Zz/0l3niySe2/3pbRNbvWX/iyScsy/L6YOmb
3jy3uX913+tc9fXf+7qI3H/ufj3LtX5mfeX2leeef65iVizLsm17PK9AQnLi2e8P1tAJAMCU
+dLvfCnDWn5ayAuMDp65a5hEUb7R1XgyasqoVsxKYDz3IG80Ub8D+Mcff6wPNOoVPvbNxx77
5mPeYl5H+I8//vgXv/iFiJimubO747emfe2ffc1b7LVLr/3iF7/wc/iPffMx7+nBwcGfX/xz
P7klIucfPZ/L0Ub2ak+YnsQAa+O+jaKrQJ1LijpTZ+pMnQcV/h7Uv5HP/8sn5Mv/Xn/0vmRD
hZGLBcr9ksDcg+MG2kia6iWvGLmXNPs687+8tnb3mv9aRd8q58LzFy48fyHNLL1X1pce6cW8
juOcXj3tlz/5R08++UdPhjf1nW9/J9CpK3dcwQcAwJgFMkZ6Oiqc2Uqem2Ejyesmr5iwF39W
3L5sx7hFu5Bwhm72HO5jTpdYAABGygtH9AbEcHjkPfUDl7nzb4TXSrmRDNLsJVy3sKYj6yeq
Mi/iisxUgBUZQhFXAQAwagkZpvSBUeaNJMwNz+q7l4QYy6jWDKN3IeGvCAAAQH4m7wLAvJiW
f7XfDGWwAABAvrx0jt5gF3kVYS7X8Y3nYsCEvXgHlRA+KsP0LyQkwAIAAMMKhB1+mOJHYJFz
02xz7vwbw2wkvYS9+HFVcnLO7hzdkZAmQgAAkJ0XAAVK0j+N22ZyyYiyWQl70UPGuNX1OxKS
wQIAAMPK0M180DgszUbSz42blWEVX9OR9VrvQkIyWAAAAPkwlixz0RSaCAEAAHJzeEdCmggB
AAAGkNBW6MybFbPSlGZSgGUsGeOpqLquxvzSAAAA5M7u9DJYNBECAADkw3ZkYXFBCLAAAADy
0uqIsWBIwQGWK+KKcot+MQAAAPJQXRTVVTK+Tu6u0M0KAABMt7qpup2ujDbAIqgCAACzpLbY
bTiODNREWF2uXrvZunaz5T29dmvdn3Xt9vrRhCvKlY1LG0RXAABgpphuq+20ZbA+WPMLIvLf
uBKIsa7dWvd6U127vX7D2w0lsvnvNuTw3yBXRTwAAACmQKftDJrBErcrrvz7ebnxfVtExFWr
Sl272VpVSlylRESpj2+1RES5avefNJQfORFLAQCAGaBattNxZKAAq9Vsidu98X372nJVRER1
m+/b0ml7/4rIDe/Z4rTXfrLWdruOs992u2s/WSOoAgAAs8A0xLneEldk4GEalBIR6TjKFeU4
InJD0xER5SgRuWbKDc2Wcp3tzW2no7Y3t5XrBLfgRj0AAAAmnGVKu932pge7ivDGlqNcuaGl
RORG7f42NzpKXHXjdRERr63QK+/9RwgFAACmnbXYth3Hmx4gg6Vc+YUh1xbl2qKISH2rfs1Q
1wwlrqpv1b3y+k9WROTafO8hIvWfrFwz5ZopInLNlPqllWumXBvXXQ4BAADGw5x3vEsIJW2A
dTje+o0d+cz/Ub9RqfpWXUQ+c3HlRrcXVHnTItJY37vREe/RWN8T6U17y/SW5O7OAABguhgd
R3V6EU7/JsK4W9k0PrvnhVaB6WSN9b36pVRLAgCAiXDwzF0iMnf+Df2pJ7kwsIU0qwxZGJgV
Xnju/BuRhxOuc5i6bjupmghjbhRY/79WgtNusPzY8pdW/H/1EgAAMOn0OEa0cMSLSLynkYUZ
VhmycKSMeVGtfXXYDT0pwAo247lKXNX47J6I9P5dj/5Xp5fELQMAAKaDH9NMBD0aS7Ow/gjM
tUxx2o7/NPVVhNpwVo3P7vkXBobjp0ikrAAAmD4Hz9zlt6lNvcjGR191UbU7bf9pik7ugRHY
Bx+5Kpy4IokFAMB0S991qSh63SK7hUVmquKOy1ps+x2wpH8G6/g47HpPdj1Iql9aSY6ZiKgA
AJgyXvoqbpZoUYiX5ZqsRFdkviohajQ6R2M0SJ8AK5C4EhGRxm/2QiU/qKpfWmn85l7fGAsA
AEyZQPCh9ygPRCHJ7WslOYShOPt6BivtOFgDibxgsH5pJXw54cw60BRdl4ErHFB01QAAxfD6
s+tpKomJrgLpK3/JsgVbyZIbPVXL9i8hlFSd3PO40Y2X5RKiK5FwROKVzM3N5buLHDcIAMBA
AuGU3kQYDlACDYjeAqMoDPMWG6ijWOQ2q4vSutLSQ6a+fbCCBf5gV3r7oIjorYTeaKL+v/rq
jd/cixsuawz84MYPPsIlY66AX35wcFD+kKj8NQQAjF9yb/G48r5rjaIwYdfhieRynWVKt9PV
S5L7YEWUhTtaFRgwDUSPYLzpcMl4ahLekVeZiYixAABAgLXYbmgdsGSAcbCihBNU4SRWcJXi
orHCY5fklrtweaAxUV/A35S+jLeAXxLYXfqtZXuh4jaSsN/wAoHVw/WJKxn0VYrbe8Jf6pWX
X8n84gAAppvptvRLCGXIACs9/xaEhd+LcFL6J0V21UoIDiQxCZdha7lUu+9++y4/0lcp/QsI
AECSzrFBsGTQACvYoSrFjXESFi6EnxqJ+yrduG9jpBVIs30vWSIi9569Vy8Jrxte4N6z93rT
3qyN+zYG3VpCDcMBjb/N8EaS95uwQKAO4fp4JcO8SuHVvacHBwf3nr3Xew29aX3Fe8/eO+q3
R+4mrsLUmTpTZ0wi1bKdjqOXJP5eN3LbsZ61ioi0gnc9lPOPnn/mXz8z/H4TOpVH9sF69vvP
ful3vpTbYUdVJk2OJHLJuLazjfs2tv5iK6FlbaCt9X0lAxL2krDfe8/eG6hzyor1rfaQq8dV
flISnwHee6PoWlDnMqLO1DlO+HtQ/0Y+/y+feKY1SQMrjIdpyPrVJy/+6KJeOL4mwkKOOfDl
OllfkPkOMZXL1jK8gKMeKGtE2+eyAwAIcxw1/Eamj2XK/lv7gcIxBVhloHd29r41wyUFmtAc
ySzws25FVwQACmbvbW9+umYu5dfCNfmUUs6Hjd2mHSifoQBLYsZHGOfe45IikdFVvnUrKnSL
3G+OnRJGd1z+32tE2weAibP9sy352YQ1ehYl3a1ykKuUl86FFxvmyz7freWy38C4EtKvvS9y
7pDHpY9qQTgFAMgLAdZY6Z2mA9/oeiYmbrGBsjXhtYbZWo4HG5nASwhu4uYOeVyB1cN/Bf0p
TbcAgIEQYI3b3Nxc+Fs8Tdtl+u/4fLc25MEmlwzzdPjjGmmbLABgliX2weJagZFJ812esMyg
gcugW8uwTPoR6gdaIN/jKrYTHgBgdpDBAmJxaScAIJvZuooQSIne7gAQtnbnWq1aM0+YRVek
RJRSTtvZfWe3dbWllxNgAUlIXwGAz7KsF158oehalE791nr9VD0QYNFEiHKJ7PJfVDXKUBMA
KA/TNIuuQhnZTbtWqwUKCbAAAACyUx1lmqZhHBvgngALAABgWIH0XlIfLGNcNxtS1xkQAgAA
TCrlqopZabWOumGRwQIAABhK60orkMEiwAIAABiK3bQrZkUvGXuA5Yq4oo4/AAAAJpfdtAPD
g41yHCyXe+0AADC7dnZ3/OnTq6fHtq+x7dSnlDIXTWPRUJ1e7JN3BktPTY3nmAAAQPkEIp6d
3R29JDIeyrDZUtG7YeWUwUoRTq2cq++91Cj62Mvl4OAgPJRl4CYtyQukGQlzoA2OZ4F7z947
6BbCS0YuE5ibcDNB7jMIAKPjhUF6Amk80dXYUlZhSqmKWfHHcx8swFp7Zk1dkcrKgoh097qV
tYr9/H7tt2oi0n23XflUZf/5/e0f7a19ea12tqJaqv1qe/tHext/st690pWlhc1HrYv/+GJR
R142kXe7CxcGgrDAAn2jhEE3OJ4FXnn5lYG2EHdogWW4gSAAlJYf+vhBkh6ERTYm+guEk2Ey
SCwV2E64JuFNxa2SwL5iZ89gOa86jZcba8+sqw/azk8d5z1H2UquV7r73dZLzkJtwVg2RGT7
e9ubv7XR3m47H6iNP1lvv9vd/qPLIrLyxbWc/1wTKzm68uMGr8SPJOIW6Kvv8hOxAABgsiRE
MJGL+U/jUl/p9xjeaWSUlrzHgXZtN+1bbr7FfzpYgNV4qaFExBB1XXWVdBtKRLqGOC0louSk
tF52xFUiolxR15WcEDkp2w9f9lbfe357oN1Nq+QAQs/KzM3NhRcOLxCX7wnntwLLT8QCAICJ
E0g76XmgcFqobzgVzmllrlXkdrz+YYFcWjhzlqzZbK5/el3mRVyRAQIsvZdVtdu+2m6+32tl
tKpVWVbmr5s//97Pmy81RaT6a8ttt22/tV87W2l/0Pb2tPKNFRFRH6rGbPfE8uOJ5MgJycJB
WMIL21ffpBoAYFCRbYIJsVFcNDNQOJWwcFw7YMLCg8VYrhiGYRi9CwlTXUUYuCRQiWr+tCUi
4irzVsNxncb3bKfjqCUlpiGmoT6hVMdxHKetuk6lt2pbtWVZZjy6AgBg1pxePd03SBoyNVUe
fjesPhms8Cig5j2G4yqvHVBExBQlolqO/Sdi/b7lbDvqQ2WclPYHbXGVs92qPFCp/rOq85aS
UwvtVrvoAy/YoFeuRS4fTtsgWd9Xic7yAJCvgQKmoqKr5HTaoE2EcvxCwqQAK2KMdVfJTeb+
i/vmF6vO8y0REcvYf3HfPGM6Lzn7J2zjU6ZhKdUR9Z7yCu3fbxi3mcZN0nreVu/M9NhYw0dX
fvsXEcDoJA8DAQBILxCgRPY6D7ckptzsMAGZFzxFVs+PqzKMJWHbdtoM1pHDlFUvruoVivOn
R0+dF53weupNpd5syczLJXcloT5G2bocTQe9G1byy5s8YlZkCdEVAAwjYfAFCfVt0p/6oU9k
/JQhq5RQw77VG3R3dtO+5dbehYTpAiw3lHniBoKZxH2pRzZRDRQuYEgkrgAgd+m7nAfim4TV
47Y5UPf2zKska15trp/pXUjYr5O73t2qV0J0NVrJg4/PbL5qpIiuAAA5cMUwDHPRlD5XERJa
5WcuRC/3F0vTkqjHWGlyXQnLT8QCya9q5PRAiK4AADnyumGlbCI8mrz2t8fm3PgPij6OKeJ/
08cNkZWmk3tCm2OaXZd5gdxX7LsdQi4AmHGDthU6HadiVprSTBFghbJWBFUFCndy37hvI/3y
EgoaClkgcLPnvlsAAGAi+BcSJjcRpmoT9HJafmbr2t/2HvoCgRJIqHFQopoRA+2J4cUybDZu
lZIvEHeA4VUSWmAjt5PyZQcAoC+7aS8sLsig9yL0+KGSn8q69re96Wt/KzfeeKwwXFK4yIE6
+TYFAABDarVaxoIh2QKscJCkl1y7FpwbLilQoDO1HmkRYwEAgGFUq1XVVZItwEqWHH4VSx+U
EgAAIF/1U/Vupyspb/acTbjTFd2wAADAFKvdVHMcR3LPYHmdrvzpyJKipGwETL4or5yoM3Wm
ztSZOpfTJNYZwzAXzbbT7reUMa5HyPlHz+dynAeH9Gm9RF9SRJ79/rNF/2kGNomfXupMnakz
dabO5RT+HtS/kc9/OZ9v5yl2/tHzgww0OrEiR/qmPzsAABgFpZTTcWTqA6xkeod3Qi4AADAM
c8l0HMcbQ3QWA6xcbmAHAACgs5atdrvXAWuEVxECAADMDuuk5V1CKARYAAAAuTBPHF1CSIAF
AACQA8MwVEd507PYBwsAAORoZ3dHRE6vntafevzCyCUD5YFVRlEYmBVe+PTq6cjDCdc5TClF
EyEAAMiBHseIFo54EYk+N7Bk8iqjKBwpY9FQHaVUmgyWGnVlAADAVEmT6SmPnd0dP2WVZuGE
I7VOWk7b8Z+SwQIAABl5AUq+S5aWlw+LO4rqyWq7c3STHAIsAACQv/Rdl4qi1y2yW5j3SHlc
lnU0RoPQyR0AAGSTkJQK9xMvc6QVKbKzfELUaMwb+m2eyWABAICM9BxPYCJ84V54yTLIsTJk
sAAAwLAiBzKIjK7SL1lmSRWeF6WOLiEUAiwAAJC7hDGowrzr+AJjU42iMG7XAwV5kdusVqut
j1rebZ49SQGWsWSM+g/gUdcZEAIAgEmV3Fs8zZKRa42iMGHX4Ynkcp21bHU7Xb2EPlgAAABD
CVxCKARYAAAAQzIXTf0SQsmtD5Yrkjjwu5Hr3gAAAEolkMEaPORxs9xBRx2uG2BkqgIAAEB5
KFc5HUcvSRfdZAqqUlVIIqIuAACASWEumY7jBOKZxAArKq5a++ZK5ddrIiKO2v/T/do3LGNe
RMT+V/u1R2vGoojI/p/ui5LaozUR2X+pXTtXERHl7dhRW795qeiXAgAADCzQCgaPtWzt7+8H
CpMCrHB0tfLlFWOlYv9eQ5RU/6klhmH/c9v6ltV+cV9dUfY/t63/1Wq/uO/sKREx/rrtvOR4
Y24ZJxdaz9siUv3n1to3Vrb/1bbMj2kMCAAAkAvbtjc/v2meMIuuSIkopZyPnN33dgPlA3aA
ckUWxfx1c/8lx/5D2ytrv9uWqnSVWqgb3Y5SZm/a+VC1HSUipinqeluUGJYhhqiWtynGvgIA
YJJsv7lddBUmRooAS4uE9r63XXdXjDsM65mqc9nZ+xd7IrLwoRifMh2nvXBrxX7VXlg2HGd/
4VZr71/0/gyVm0zjpFE9U1VKWq/uN57fK/qoAQAARii5D1ZEkqnxp3vyp2LealrP1M2XTedN
Z7/Zrn3OkFOq3Wyrjiycrckp2X9v3+/tpUxl/17DedNJv2cAAIDJNcBAo+Yd5vKFurgirkjd
aLccL2ZyXmqJIeZ/X2v9aUs1HDGU+U9qzoteQ6AY95hiSDC6Eultx+UqQgAAMG3SNBEeTpwQ
aXfr/25FRHU/6La+ZfuLdDtKNdoiot5RIuK82utLb/yGaf1+TURV/3i59bvNog8WAABgHPoM
06BzXnaclx2RZnjB5kbDn27846Np9ZdO4y+doo8RAABgrOgJBQAAUlm7c61WrTFMg04p5bSd
3Xd2W1dbejkBFgAASMWyrBdefKHoWpRO/dZ6/VQ9EGAN0MkdAADMMtM0i65CGdlNu1arBQqz
BFjX/rb3GGgVAACA6aM6yjRNwzh2i5qBA6xrfys3/oPeg7AJAABAQum9wfpgedGVz5/2Iy2v
RA+89GX0dQtxcHDgT8/Nzekl3lMAAIBBKVdVzEqrddQNK4dO7nrk5E8nlBRLD6QODg78p/o0
AABAeq0rrUAGa4Y6uRNCAQCAUbCbdsWs6CUzFGCJyMGhoisCAACmh920A8ODDdZE6HVsL1W3
qvTiGgcDNu7bKLqmA6PO1LmcdX7l5a17zw5cAV5n6kydp8bO7o4/fXr19Hh2NJ49BiilzEXT
WDRUR3klA/fB0i8e9DtXBUoiFRKNZejDvvUXW+Ou5XA27tugzsM7OJDk90hRde5bsRLW2au2
Z9AKlPC9QZ1LgjqPx+bZzbw2FQh6vKd+0LOzuzPOAGg8TNNsdXr93LN0cg/HSYGS8JWGRSW6
UmatMOMSGo29WQO9cYYJiYY5hOF3Gt5Its16a01NU3whf9CS7B3ILBBOyfF4KzLhNLxiIzal
VMWs+OO5z9Ctcubm5gIJrXAJIPFfaSP6qku52fF80WaIseIW8ArzCtoKfEFKW8nIjY/53Quk
p+eu9IlweTgsO716OhyxpRS3hcjdDbNT+4qtX0g4W53c5w4llAAS/7V6cBCclfx0yF37qaDk
zcbNfeXlrTRV8hbInKwKl8R9wecow9a8l7FvtjIsIRs3nizd1OQCMYN2dne8R5olI6cDJcmb
8neXsIW+u0u5r7DAhYSzFWABcfw4Ro8P9OlXXt6amxs4BBn0qzHhO37QDaaMqyIXjgy5MsQf
mV+H5LUCf6OUm/L+fH1r2zecTV/zuFc4fZwXl6NK/1rpswjUME6BrI8e9PizTq+e9qbDs8LB
TcKs9FXSd+c9DVQgIa3VV7PZrJ6o+k2DM9RECGQT+Er2n4a/qv2vw+RskN6vy89RjaLT0r1n
Nw4O+nSw1escrqR/mCmb+dJEWpEbjHuJAtXT14p8xcKxV/IfIhBMB/4QkQce3qYXfPc9HN1A
r+rwr2TfvaTcGjCQyDbBhMDFm+U3zKWcFbnHNLMSNpVyd0GuGIZhGL0LCclgYdbpXyr6REKs
0PdrXuKzFMldZCJTLN7yfas0ZAtX8l7SHIt/CINWI4G+lp9ljEvqDB+hDvRSp0lKJUThgUI9
azhojqqvNBF/ZH36HiCQhp8omgV+NywCLOCYQPDkC4znFPi5H/7iD3xVR0YAeuiQvnrJX9iB
hs64LScvEBknBXY9UGNlygMMB3x9a5sh7gzkqOKCtjQH4m3q3rMb4doGAvfkMDfy6PTylD3/
Ap32wiFv+j5z4WWm6cpQjEHKrleBVSQmsZQwKzO/iTAc/2XenXchoTdNEyHQE/7uHGjFyGyQ
J9ylSW9njNtd5vaayBxYZNtW8vbj8nlxrYppKjNQHqXvFgI1TMj9JL+8fQ8kTWwxaBNbOAhL
Y5i2vOSj0F/AlP3qaE9EX4EYJTKO8eKbQEyT0KI3fDLM211k3cI1GYht22SwMLuyNVT1LUz4
solrOBv0+ymyP1CgJCHTM7pXIOVXfmTEliankiYQDKcMk3N46bef7XhTjpUQmfiM3FqgtTS8
QGRPwTivvLyVnOlMTv6RykJf4bSQ/jQcJKWcm1dTY5q6ZdiXfiEhGSxgtAZNUcggzV6RWbHk
FfuGHcmzRjrawtyc9O2VPzYpMzRzc7JxX58FtKOLnhVeJf3ek8chC9dBJClNlbLT2ECVxCwb
qNd5ckCTeW7crAyr9NW82lw/sy7zIm5ygKWybR8oi0C7WPjatAJlyH+E56b8wg68JsMce4YY
q28/sNz/HH1flpTBaMJGssUc43nXpdnLvWc3RLb6RmaRhrz+EZhmrhiGYS6ajuPQRIipFXmN
myfckDQjcjnYETV35vWHGLS9b4LEXXyQ18YHXUzvUA/A53XDookQM2GgHjkTZKIPJ7Ly957d
8AagH3LLRX3rjzncGdHe/a3FjT2RZjEgF8WO75Bh707HqZiVpjTJYGHKJXxJzOa3QgljsszX
b470MEv4QuVV4YEObZi2bGAG+RcSEmBhOqW8OAvA8Gb25woQZjfthcUFIcDCVEp/rRaBV0nw
hyinDH8XIi3MuFarZSwYQoAFAMgL0RVQrVZVV0lyJ3djyRhPbdR1BoRAbkZ042QAAPqqn6p3
O10hg4VpRZMTME4lGV4OKFztpprjOEKAhakxm+NaAeUx5O2YgOlgLpptpy0Fj4PlijBcPABM
ERroMevmxctgjSvAcgmkMEJ+vyvSV0AZ+GEWH0nMGqWU03FktAEWQRVGSb+THYCyGdGNJoEy
M5dMx3G8BroRBFjEVRgX/ebNwm9lAEChrGWr3W570zl0ct/8rU0REVeU90he2lURD2BA3s9i
f6RQQiugPLghNGaWddLyOmDJ8AHWxgObSqn1z60nRUnEUgAAYNqZJ3qXEMpQAZYr62c39q/Y
9hW73W6v3bNyfO6xoGrt184UfdSYHvTqACaIl2kmiYVZYBiG6vRySZn6YLmiRM58bs2+Yjfe
bojI8s3VBWOhfke98eZeePGVO1dUx1m5e2Xv9T2v5xcAAJgaO7s7InJ69bT+1OMXRi4ZKA+s
MorCwKzwwqdXT0ceTrjOYUqp7E2EXi+rtXvW7CstL7oSkeb7rcbbja5S9dvrgeXrd9SVq5Sr
lFL1O+qD7g4IIH0FAKWixzGihSNeRKLPDSyZvMooCkfKWDRURyk1eAZLuSIia/esiCv7rVbz
fVtExFX1O+pepNV8p7F8a71+54phGN6svZ/tNd5siEj9zro3ISJrv7Emrjgdxy8B0qCJAZhc
jFQ3O9JkespjZ3fHT1mlWTjhSK2TltN2/KfpAizt2sDtnx02Akb1WG++1/AbAZdvr/uxl2/t
N9b2W07zHUIrZMHZGZhcxFhTKS5AiWyDSx/KlFNk46OverLa7rT9p/2bCCNGXjjsul6/o+61
+vUmXNG7WDXfaXRd8RbwklVEVwAAzIJxts0NU8nIac/O7o73CJdHLm9ZR2M0SJ8Ay+01Cx4v
PAq39OxUZHufHmMRXQEAME28pFS+S5aHFyOm7KQvIsa84Y/RIMkBVlziSivpxVUJval6Mdbd
K0RXADDjGK9h+ug5nuRkVfolx38IeW1Kz2Cl7uQeCq18ffuqlyeuOjj8ZM8d9gIIl6Cc6LoB
TA0+zlMjciCDyBxP+iXLLKnC86LU0SWEkirAig+tJsvBwYEeV83NzYVLiq4jAACTzevJHu7k
PugqoyiM2/VAQV7kNqvVauujlh4j9QuwpiW6CiCWAoBCeGdfklhTJi5flbxkch/zERUm7Do8
kVyus5atbqerlyQGWHp0FRVaLR8OHNp8uyyNgMloEJxEnIgBACVnWVbj3WOxUNpxsMKW76j7
cZU+XWZpGgQ37tsoupoDm/Y6b23ct3H476TUuSyoM3Uua52zfKKLrnMWk1hnZGAumvolhP0s
iiyKGBGP5bvrceXeQ18s/G/wEXL+0fO5HPDBIdHSV/50uOTZ7z9bzF9mCJP46U1fZ+9PdHBQ
/JVH0/06lwd1npE6Z/hEF17nDCaxzuHvQf0b+fyX8/l2nj7nv3zeNE29pG8frAG2HpnTKjbR
RVPgdODPCEwZf7wGPt2YDspVTsfRS5L7YOWwSz2iKrYZ0bts0J+OLEGp0PsKmHp8zDEFzCXT
cZxA1DTAzZ6nQDiKIq4CgKIw7ujE0QfShM9atvb39wOFGQOs5tuNSezkjgnC71oAKBvbtjc/
v2meMIuuSIkopZyPnN33dgPl2TNYXozlT0eWAAAQyfsF5SWx+DU1Kbbf3C66ChNjqCbCcBQV
KClPBywAAICx+ZXhNwEAAAAdARbKiCYDYAbR4R3ThAALAFAkriXEVCLAAgAAyNlsjYOF8qNx
EABKa+3OtVq1xjANOqWU03Z239ltXW3p5QRYKB1iLGAGeR98Pv4lZ1nWCy++UHQtSqd+a71+
qj5IgKWKrjIAACiNwP2M4bGb9sptK4FC+mChRLwfr/x+BWYNn3pMNNVRpmkahqEXEmABAAAM
K5DeI8ACABSPJBYmmnJVxazoJQRYAAAAQ2ldaZHBQklx9RAAYELZTZsMFgCgpBjVHRPKbtqB
4cGShmkwlgwZC3WdASEAAJhgO7s74cLTq6fHud/w7vy53qzA0xwppcxF01g0VKcX0pDBAgAA
k2dndycQ1QVKwnNz2WnCXL0bFiO5AwCAfIwhZZWwxzRZtGFqmBxdKaUqZsUfzz2PAMsVSRz1
3chvVwAAYLJ4ccnp1dP+hF4u8U174VXCC+iF3vI7uzv+ihKTxwq0GIY3Fa5bYIPhKtlXbD2D
NWAToSsq/Oh3Tx1vgfCKXmQGAACmgxffhBvvJLHBLm5WLo16CVVNU5/0dQhcSJgireSO6p6E
Soix0MMYDQAw9QLZIP2pl3aS46mjYQKsuIRZ3xbDuLolpNM8zWZz/dPrMt+LbZICLEX0AwAA
Ukvo4ZRwiV/cwkPGWGnENVNm2a8rhmEYRu9CwqxXEboq7rH5wEbC3N4DAIAoDIWF8cghoori
d8MapOd5TGC08cDm1o8uaovJ5gObF/WS5E3Nj2m0LQAAUB4J6a5AR/XIdfWGRX8tGeQ6wXAH
9jR1S6BfSNgvwOqXbdo4tyGu2ji3sfXS1sa5DRFRruqVi2y9tNW/OiS0AACYJX54FCgUrVkw
ZUopc+YpbsWEuukrRkZgtn10IWFiE2FC6OP2Hu1fttu/7LbbbXFl60dbWz/aarfb7Xbbm/YX
Cz4AAMAMS+hs7k8np5G8jufJJUNWYKD6yPELCQdqIowoUx219/p2/e4Vv8RRqvH6nojU717x
JvpsivGxAACYcAN1b8+8yjAbCS+Zb51FpHm1uX6mdyFhv07uiWmn+h11pZSIiFL1O+peoR9U
xUZX4V0AAABMOlcMwzAXTenXRNhnO12RxtsNEWm83eiG5tbvrBd9oAAAAGPldcMaYftc481G
0ceIycAoowCASOO/ueGQnI5TMStNaQ48DtbyYVOgPxGeFX4aNz1OB8cFCgupEgAgbMxDYfEN
gBz5FxJmGWjUj5Cabx/lqPRpf5m4fwsxd8ibFpGDgwO/kBgLAAAMyW7aC4sLkiHACgRSKZdM
CMUAAACmQ6vVMhYMyXyrnLhEVDhNVYbGQZ2XtSq6FgAAYApVq1XVVZKtk3vz7cbyHfVwIsor
96cDS8atVTYb920UXYUZrPPWRBzCRFSSOlPnaalzxGlhFHV+5eWtkb4apX+dkbP6qXq30+23
lDHwY/nuuvcYbMWQ84+ez+U4w13aA3MD089+/9ni/igZTeKnV6/zpHR+m/TXeVJQZ+rsCZ8Z
RlTng4MRnoXK/zqHhb8H9W/k81/O59t5ij34hQdXbl+RzE2EcfxkVdEH2KN3bAcAABgpc9Fs
O20ZxThY5Ymu+tIvHiQIAwAAw5oXx3EklwArPGpDoDN7eUKucBRFXAUAJeQPhcVJGpNFKeV0
HBk+wNL7rev92QOzAAAoJy+YI5LD8Mwl03Ec706DOfTBihx3FAAAYKZYy1a73famh81g+ckq
/SkAAMCssU5a9lXbmx42g+WFVs23G4RWAIAc0WaHiWOe6F1CKMMHWN7wod4jkM3ylWEAdwAA
gJEyDEN1lDedw1WEgdyV/zQ8AQTQsRQAEGdnd8efPr16OjzLLww8LYpSyhujQXIfaBQAgLz4
gzVgBvkxkxc26cFWORmLhuoopfLLYAEAAJRBIA4bZ07LOmk5bcd/SoAFAACmRKDRcJyqJ6vt
Ttt/SoAFAAAmUlwUVUiXLMuytre3/acEWAAAYCJF5quK6vBuzBv+GA3SJ8BSY64bAADApPIv
IRSuIgQAAFOjsPEa5kWpo0sIhSZCAABQQqdXT+/s7vhtfwPFTNnWGka1Wm191PJu8+whwAIA
AGWUEB4FZvlPixpr1Fq2up2uXkITIQBgRnEzCeTFsiy9A5YQYAEAAAzJXDT1SwiFAAsF4rcj
AGBqBDJYSX2wjCVjPHVS1xkQAgAQwbsdIT/GUHLKVU7H0UvIYAEAAGRnLpmO4+iXEAoBFgAA
SCnQCgaPtWzt7+8HCgsdpsEVYbh4AAAmhG3bm5/fNE+YRVekRJRSzkfO7nu7gfJxBVgugRQA
AJNt+83t4TcyI0YZYBFUAQCAmZRPgLVxaUN/evEfbxV9XAAAAIXJp5O7cpX+2Li0HruoqyIe
AAAAUySHDJZypet2lcj2Z3tNs2s/WVv7yZr/lBAKAADMlCEyWK4oV5QrIuK4jnIdf872Z7eV
66xs1UlQAQCAGZQpgxXqvX709DCc2vvsXv0nK/WfrDQ+uxdYFwAATKK1O9dq1RrDNOiUUk7b
2X1nt3W1pZcPHGApV+pb9eh5x5NVjcMYK7BUY31PMPO49wUATBzLsl548YWia1E69Vvr9VP1
QIA1QBOh3yCYikuyCgAwGbw7HqIv0zSLrkIZ2U27VqsFCtNlsI63CTY2GiLH8lXH0lSHcVX9
0oqULF91cPgBmjtMnoRLAAAA0lMdZZqmYRhKHYVG/TNYKjxeaFzXdbfs0dXcIS+uCpcAAABk
EEjvJWawIodiD4dWoabAEkZXAACgJHZ2d/zp06unI8sjF0izkUIoV1XMSqt11A0rKcCKSFwF
S4498+IqTwmjKz1NRYMgAEwKr4PUvWeLrgfyEA6hdnZ3MoRHge14T/3tZNvmMFpXWoNksHSB
6CqxA3sJoys5bBAMTwds3LcxwEbLYRLrPInVnrgKU2fqPEV13hpNnbe0bW6N4jWZtNd5TPRI
SELxUN/YKBBOyfF4KzINNmp207aWrdSLm4aYhizKsYcxgkfI+UfP53LAB4dE68/uT4dLnv3+
s+P/qwxpEj+9G/dtTFyftwl9nYuuAnUuqYmr88HBSOqsn4hGcVKauNdZor4H9W/k818e6tt5
Z3cnMoOVvEDK7eiz/Ee4PHI7KfebwDCMB7/woF7SL4OVInEV1zJYv7RSeCqLpkAAAMosnK9K
2bnKXyxlxsufDizvzx2mYVEpZS6axqKhOr3AKfEqQj26ShzXqrG+5z38YMuLrvTYq3BeHyyP
F3iFSwAAQMmFI6RwsHV69bQ37bcnBkoiNzhkHkvvhpV2HKzpEI6iiKsAACiVNGmkcEiUnH9K
iJy8tU6vnh4yulJKVcyKP557ipHcpyW6AgAAZTNkWOPnpQpnX7EHyWCli678pkCv05Xf+8pr
JSy8JxYAACiclyXSU02RVxH2Fb6KMM2uE7Y2fPpKROymfcvNt/hP+ww0mlI4hCpV7ysAAFAe
gWgmWwoqeSN616vwRYJx/dyHSYY1m831T6/LfC98GuBmzyl5KSv9QbAFAAAkqkUvQ0yTvJHw
BpP3qPeLH+rYXDEMwzB6o0+lHmgUAAAgD3GhTF6tfn1jrGH2m8w0zVanJblksALtg+HmQvpg
AQCAqeddSOhN599ECPT1ystbjI8BAJgytn10ISFNhAAAYBblPr6D3bRvubV3ISEZLAAAgBw0
rzarJ6pe8ooACwAAIA+uGIZhLppCgAUAAJAjrxsWARYAAEA+nI7jXUhIJ3cAQNnNzcnBAVcf
YwL4FxImBliq6GoCAICJEnejQP1mNYF7EY6hMDArvLB/O8LArEGvNLSb9urtq0ITIQAAyEvc
LZP1OwOKdo/n8RSOU6vVMhYMoYkQAADkYvzRzDBV9VNWgx5Xck6rWq2qrhIyWAAAIC+5D91Z
Bl4+LOWh1U/Vu52uEGABAIBcTEp0pdczsq+Y9wiXpznG2k01x3GEJkIAAABfZGf59B3ezUWz
7bSFDBYAAJhBo+oxNi/9M1jGkjGeg1TXGRACAIBpk22kg7IZ6CiUUk7HETJYAIDZdHAgjFw6
Nv6gCXqwMrbCuPoMFPnF9c3SmUum4zjiitAHCwAA5CiuC3lkNDO2woT6hCeSyxNYy1a73fam
cwqwXJHEgd+NXPcGAABQNtZJy75qe9ODhzxuljvoqMN1AxjrFAAATAfzhNl+b6AMVqagKg0l
EVEXAADAxDEMQ3V6EVNiJ3dXlPdIsdGP21bRxwUAAFAYpZQ3RoMkZ7D6xFXu0fyPf7kiIh+3
6zd8Yi9tLebHNAYEyubgQO49uyGyVXRFAADZrd29VjErRe29eqJ64fkL/tP6rfXqUrWoythX
7eaHTWPRUB2lVC86GrADlBsbdN3wiT0vzBp+UwAAoOQqZmWr/u2i9v7Uye0LchRgVZeql392
uZCamIti3bzSlKZ10nLajl+eYhwsVx09ouhx1WAxFgAAwFSonqy2O23/aXIfLJWUZ3IPH6Ju
WNgTV25Y2BNRR+XJDwAAMPWeSDGIVJpl0nnqj5/qW5IjfeOWZfkdsGTgkdyjI6S2Nr0/3KZG
6+BQQgkAAMjHE6flGzs5xk9p6EHPSKOrAGPe8G7z7EnTRBgRCX3cNbQJR1ta+bMCSxbu4OBg
7pAXUYVLAADldO/ZDc7T00APtrxp/V9vwnuMwFN//JT30Ev88kBh5HRgyYDUGayY9NLHXRFR
H3e9Z+qGhaNmxBsWlH714fElvZKyxFsAAKB439g5+tfLeHmPrDHWV3/3q37Y9NXf/apf7j31
HoGwKVwYFrd6L1KaF6WOLiGUzDd7vmEh85JcPAgAwAzwoiWR8bcSRtKDrTTlAy1WrVZbH7X0
tNTA96k5no6KXeaGheCSgZLxS9kOuHHfRpG1zGTS6rw1gXUW6kydqXMZ5FrtreNb2xrFazKh
r3NuShBX6YbskhW5upc3spatbudYlJPlRoBeUsoLmMKpLD2Q0pfUS8bGj6jm5ub8f/XysK2/
mLABMDfu25i4OguvM3WmztR58DpL3qeOwNZyf00m8XXePLuZ5+a8DJaUItLSWwwzRFrJq1uW
1Xi3oZdkbCL0JERL4WRVIekrvw+7JAZVAAAgT377oGe8rYReN6m4Rr1R5LHMRVO/hFAyZLDS
pKDCya24dNc46U2EfkIrUAIAAEYoLtLyu7f7c/X4LA9+5/S+/dkjF+i7un4JoWRrIhSJbvLT
Q6jIpsPChaMo4ioAAPIXDo/8koRZMmxc5WetwhPp50pMl/bI1Q1DRES5yuk4+sLZmwhvOCE3
nDiKtD7uHnsKAAAwIxzHCYxslTGDlcy/ZtDLWgWeAgCASRRoBSsVYyQRTQquiMj+fvBONtmr
8/FHIika/shsAQDKb25ODg6EbiPJbNve/PymecIUEXHlqZPbBVbm4f/hYX/60uVL9dtXiqpJ
+3pbhe7dnD3ACodWXsgVvfCJpLkAAKD8tt88FlFdkAtF1+hIU5pFV+GYfBJqevNfZLKK6AoA
AMyOocbBiqP3uLphQT7+iN5XAABghuRzL8LAkFeRJQAAADNi5H3ui7pJDgAAQFFGHmARVwEA
gFlT1KgRmFHeVdAb9xVdDwDA4NbuXKtVa71hGiAiIkopp+3svrPbutrSywmwAABAKpZlvfDi
C0XXonTqt9brp+qBAGskVxECAIDpY5pm0VUoI7tp12q1QCEBFgAAQHaqo0zTNLzbPh8iwAIA
ABhWIL1HgAUAADAU5aqKWdFLEju5KwHywl1UAQyJ+zGjtFpXWmSwAAAA8mQ37UAGiwALAABg
KHbTDgwPxjhYGIeDg6JrAAAYjZ3dHX/69OrpQLleku8ew1vWa6LLqw4JR6SUMhdNY9FQnV7/
KjJYAAAgo0BMs7O7ExflzAK9GxYZLIyJ1zsVADA1whmduGzWePh7HF3yLIFSqmJW/PHcCbAw
Vlz+A2BIXEhYZslNhH6JPitQKCOL2BL2Hrn9yPokHJ19xU6bwTKWDBkLdZ0BIQAAmEjJgUh4
scg2RL1wZ3cnHP3o5bnUNnn7kfUJrBgotJv2LTff4j8lgwUAmDAksUpCTztJYsOcHoQld0VP
7jKfV7WTtx+X4ko+zGazuf7pdZkXcUUIsDBOnBABDI8OnaUSTvkk5Jm88sgYKyE1lW+v+fTX
HvatWJArhmEYRu9CwrFfReiKuKKOPzDd+K0JAFPv9OrpcY7IUPj248IyvxvWKAOsUCClXFHc
gAcAUDR++OVi0EEZvIXTr1KG6Cp8jAnLexcSetN5NxG6xE8AgFEhKiqhNPGH3yyYob1v1ANr
RbZXJseO/gLBfu62nXcGS0tQAQAwUnTDKolws2BCdieya3nf7QemR9cfK7D98Kw09DsSDpfB
Oh5RbZzb2HppK2ox4i4AAKZTcpd2T0JjXHKIFhno9I140uwoYftxy/eNuppXm+tnehcSZgyw
wj3TN85tiMjmuY2LXoxFUAUAADTTfxcdVwzDMBdNx3EGbCKMv+7PENm3bRERV5Unujo4nkQ+
OJRQAgAA8pWcDZoyXjes1BmshP5Vrtp4YNO7PFCJbDywufWji4F1CxGOruYOu0d60+GSYioK
AMC0m+KISud0nIpZaUozVQYrtve6n6xy1c8bja5SP280Dku0RxEImAAAwJj5FxL2yWBFjwIa
agFs/7LdfK/hxVK1JbOooEpHdAUAs4yRrlAIu2mv3r4qyQFWRHSlhVYrd6/svb4nIvU7V5yO
8oMqR6n63SuN1/fCS06Ejfs2iq7ClNT5lZe37j274f27cd9k1DkZdabO1LlMdd7qdwjJC0TO
7bvNIeuM6ddqtYwFo99SpnH0WBT9Ub+n7j3EEO9f/VG/+6hEX7JX8msrgeXDzj96PsNRRfZh
T5gOlzz7/WeL/tMMrLSfXu/Vjbx+oLR1TkCdqTN1LludEy5POjjoM1BW5Nzcr3eaxNc5/D2o
fyOf/3KWb+eZUj1Z9f7u6a4iDF8V6ErjzV6bYJ8GQX3JuK3lZO7QiLYPAACQoH6q3u10pX+A
FR5zwZX67fWjDd1Rj1zPK9fnHpUU1EPLu2zQ4wVh4RLkhYEvAKBYnIcLUbup5jiO9AmwQqGV
Hxs13m4E/tXpJeFlwsuPTiBsCqe4SHrlJfxJ5l4WAArEKSiZ/uLwQuXIXDTbTlvSjoMVn3NK
iJbCya24dBeKNeS1NlyqA6BYXnzgn4gyn5S8mGw6TmjJHdRyUb+1Xl2qFnWA9lW7+WHTf7p2
95p/E8Dxq56oXnj+Qu/JvHgZrBQBVii6SpOCarzdqN9RDySuAiWzqWyfXq8+ucRYkRsp1cEC
mD7++QeRcjnJR6ouVS//7HIhB2UuinXzSlOafknFrGzVv11IZUTkqZPbF6QXYCmlnI4j/ZoI
hxomNLnpcDYVewrgBARgmkxQXDVkPVOuHrdYoDVwbu5Yts+PwPS1J+R1LR1zyXQcx4udMt7s
eYqVLcOU7xEFji7lwUYuphcG5vqzpuyVBFB+aU5rOZ7nR/eVkf78HCc5AA3PnRM5EHlO5EBk
FMf01B8/5U9/9Xe/OoI9DOIJ7b4939iJKP/GzrHpdKxlq91ue9MD3uz5UP3uFe/hP02zyrhe
tpIaf+iW/jdT5h+C0xePApgs/s+5IdM8GRbLfNpMWZ6yH7qfkfJfhMAP4ISzdGDWnMgjv/Ol
0UVXX/3dr3qhlR5sFcCLnL6x04uc/EBKLw8sk4510vI6YEnmAEtEGq/vNV7fm7Kw6ZF/8iVv
YtCPTd9B7SJXyWWZV17eSlg3+ANFOwf1jY24xgTAlBkobR83GKleniawS9NLLDA33PIQuYWE
loSAAX5Fj+Bs70dX3lM9xnrqj58KTIycHzl5AjFWwnQK5oneJYQyTIAVFpnWCkRg5Q/I8m3U
Dwdege0PeaFH8jL6b5ohU01xn+3RvXQA0FeaqCJyEJkEyaflQU+k4cgpubbJJf5G4n7VJ/dn
D8zS+3IUewJ/6o+fGiyzNdIBNfWU1SDpKxExDEN1ekNcZe+D5YVK+j0H/Wn/XoTeRODpKF+V
YT33J8+KfEkS36Phcv3XiT/Xv2w4nLDVV4wTDsLiPjD3nt04ONgaWzudfkFK3CefRkMAhcjl
/JNyC+kaAbaG3FTcmTZlq1+GcND/Hhyn4rtk5UQp5TcRZg+wwjFTODtV8nAqTsq4yi/31wq0
vvX9GZRwMyw9SktZmcjO7JHjJiRHbHGVifx1BQAlkRCL5PvDL+H0rv/GDv8WjfwFnnwyF+1M
O9DZe7qN6o57wzEWDdVRSvVql2cToRx2zEqYW/4mQl9Cg3dCNyb9A9P3M5DmcxXX+h7Z6hf3
mU/zaQy3XUau1feyFD75AMpj0DNS+AwsktQQIfENkSJy79kNkdhvhDHfAKPv+Zmz95Csk5bT
dvyn2QMsr7tVIJzS+2BNDX2YEE/gM5DcxzD8GyXyAxxYJXfDJI1HWjEAyMugDW357qhv20Xg
POz/eC7PqXVENQn0rwr0eR+3uCsHh1Y9WW132v7TjE2EgbjKexpZGJg7cY2G+gcmbrSngJTp
oiGrJKHWyYHOICn7eI4t/gOAUcsWysSNhB7ZfDHMjiI3O9DcMvvq735Vv06w4E5X3igMgw9z
lcyyrO3tbf8pA40mSWjwzv33UMKO4vY4ZP+quOOd3A8wAIxI+rgnzbdDLk0KEycyqNILxxp1
RQZVQ1w/KCLGvOGP0SAEWH2lH58t20ak6ItjwxIaNAFgQmU70w50Akw5JBWmmH8JoRBglUTy
NYNpFsvrg122aA8AUFpGUUHESMfBymZelDq6hFAIsCbRqH8b8dsLANCXfdWu317YZW3t6239
afVE9amT21k3loNqtdr6qKVHfgRYJUJkAwCjwzk2X80Pm01pFl2LngvPX7ggFwqswNrda91O
Vy9JDLDKOZIXAABAmViW1Xi3oZfkPNAoAADArDEXTf0SQiHAAgAAGJ5+CaEQYAEAAAxJucrp
OHoJARYAAEB25pLpOE5g8AgCLAAAkEqgFQwea9na398PFDJMAwAASMW27c3Pb5onzKIrUiJK
KecjZ/e93UB5UoBlLBljqtx1BoQAAKDstt8scjDPyUITIQAAQM4IsAAAAHI29j5YrghDxAMA
gKk2ygDLJZACAACzKO8Ai6AKAADMvJwCLOIqAACm3dqda7VqjWEadEopp+3svrPbutrSy4cL
sI7HVRvnNrZe2oparLDo6+DgYG5uLqHk4ODAmwgsBgAAAizLeuHFF4quRenUb63XT9UDAVbG
qwiVKyoUXYnI5rmN3nNXHT0K4gdPcSVesOUJLwwAAHSmaRZdhTKym3atVgsUDhhgub3QKswQ
2bdtESk2qPL1zV0BAAAMT3WUaZqGcWx49tQBVihlpc1SG+c2lIj32HhgM7xun8cIhGMpoisA
ADAigfReqj5YKi4G8jNVrvr5B7aI/LzRuOWTlsiowqYx2LhvY/iNUGfqXBLUmTpTZ+qMMVCu
qpiVVquVamljyRAz6rEogcfa59dkUcQQMWTtvjVvYoBHyPlHz2c4vINDekl4mYTpZ7//bHF/
nYwm8dNLnakzdabO1Lmcwt+D+jfy+S9n+XaeBRu/sbF255pektREGJG40vpXrdy94k3U71xx
OspPWTlK1Q9nBZYcNb/H+nh2BwAAICJ2066YFb0kfR+sY13X63fUlVL1O+riiriq8fqeP6vx
+p4obck768pV9TvrRyXjirf68i4e9BCWAQCAbOymHRgeLF2AFb4q0JXGm41e1iq5u5W+ZNzW
RqZvV3eSXgAAYEhKKXPRNBaPuj31C7DCYy64Ur9dS0fdUY9czyvX5x6VTGz/dwAAgDj6hYSJ
AVYotPJjo8bbjcC/Or0kvEx4eQAAgImmlNK7YaW7VU58zikhWgont+LSXQAAABPNvmKnzmB5
QtFVmhRUXOKK9BUAAJg+gQsJk5sIhxovNLnpEAAAYGo0m83qiarfNJjxZs8AAAA44ophGP4d
CTMGWPW7V7yH/zTNKkUfOgAAwAj53bCyZ7Aar+81Xt8jbAIAAJDjFxLm2UQYmdYKRGAEZAAA
YCrZ9tGFhOmGaYjihUrBm+QczvKmvYnA06IPHwAAIH92077l1lu86ewBVjhmCmenCKcAAMCM
aF5trp9Zl3kRN++rCL2OWQlzaSIEAADTyRXDMMxFU/JtIhS6WAEAgNlmmqbjOBkDrEBc5T2N
LAzMpdEQAIBZsLO7Ey48vXp6yA0Os4XIuukbHL7OTsepmJWmNBloFAAAjElkBDPmCgTqkG+V
/AsJszcRAgAAJOubH8rXzu5OmoSTv4xXpcBawyTJ7Ka9evuqEGABAICi+CFXIKaJa8ILLDD8
rNOrp1PGZCm1Wi1jwRDuRQgAAAqhR1Fx0xKV90oIofTUVMqEWXg73rrpt6CrVquqq4QMFgAA
GJ1AjBJomwvEQ97T5FbFvl3dvVl+25/k1C8+pfqperfTlT4BlhpbfQAAwJSLzBXFLZw+e9S3
PXH4eqZXu6nWeLchZLAAAMDoZAtW/MxTXJiV0HFq0Hgr3z5Y5qLZdtpCgAUAAIoyaC91iYq6
IpsU43po6W2REnMV4VDmxXEcIcACAADj58c6gUJ/OqGJMBwnxW0kTsJ+h6SUcjqOcBUhAAAo
RCCs8Z+Gh6RK3x+rb6h0evV03H6HZy6ZjuOIK0IGCwAAjMJAA34mlCcEXrnXbcjNWstWu932
pslgAQAA5MA6aXkdsCQ5g2UsGeOpkLrOgBAAAGCymSfM9ntksAAAAPJjGIbq9HJGBFgAAAA5
UEqlaiIcCVeEIeIBAMB0MRYN1VFK9WKcUQZYLoEUAACYCdZJy2k7/tO8A6ySBVUHBwdzc3P6
U2/CLwyXAAAADKp6strutP2nOfXBckV5j6IPT+cHT/7TuUPerHAJAABABpZ1NEaDDBtgHY+r
Ns5txCym+jxGIJC7EnJUAABgZIx5w7vNsydjgBXOV3nR1aYfY404fuqLcAoAAIyTnsEasA9W
fCOgIWLbtmVZRUVU6YWTW7pnv/9s0RUc2ObZzaKrQJ1LijpTZ+pMnTEO86LU0SWEMkCAldC/
ylUbD2wqEcuylMjGA5tbP7oYWHc80vRYT46uvvQ7XxpTXQEAwLSoVqutj1p6wJMqwFJxEZKf
rHLVzz+wvclbPmmJjC+o0vVtFkyOrgAAADKwlq1up6uX9OmD5fW1Cgp1rmr/st18r1FbMpvv
NNrtdiHRVV/+lYMeEfEuHvQQeAEAgGwClxBKcoAVG1qJiMjK3SveRP3OFaejxJXtv9oWEUep
+uGswJLjp4dNc8cFCvW1DjQZdpp5rSH3m4vw2Bbh+iRXctBVwoV+ScIsABOqJOe68Rxp3LEn
vzLZChN22ncWhmcumvolhDLAVYTHU1b1O+pKqfoddXFFXNV4fU9E6nfWRaTx+p5onbzqd9aV
q7xZvZLi4q00/OSWF3UN+v4b8v0aGfCN+dj1p+FxwpIHD8uwSmC/fOCBKaafYLOdYydFytNj
8lzOqJNlgAzWkfCFga403mz0mgIPE12NNxtR62pLxm2tNPwPv/dUj3XCP7n86cifF8lrpfnp
lnLdhGoMqbTNprPzCxiYbnqYFXkeG+jEWx6T1e2EM2oulKucjqOX9AuwwgNZuVK/XUtH3aFN
3xksPzbXLyllD61kCWkt/4OkF+olkWulT1MFVg889QuH/1QUeEYIjK2f8jXxlpygsxgAT0Lz
VuD8Fpfrijzxlkex5yXOqONnLpmO4wTCm8QAKxRaHSWr3m7o/9bvrHvRlTfhlYeX1EumRr5v
x8y/IUb6qYj8lI7nvMZPK2CaBG4OG/hQR95+I/KzTxyQzfBn1EArGDzWsrW/vx8oTDcOVnzO
qRc/vdnw01d+Q6GevoormSzZ3o4DrZVmpIkRHVr6jFqOabNBX5DIn7AAJkgg85T8QR7n2WYW
DH9GtW178/Ob5gmz6EMpEaWU85Gz+97uICstiiyKGGkf9Xvqx57eXQ8uECrpPULOP3q+kJcp
IXEd2ScxuVtA37WSy+P6WvWtQ+YDj/xZk7DNyPqEpyMLAyXhf5O3z9kWmALJZ85s59jySDiX
DnPyHP8Ztahv5EmX3EQ42HihgU7u4abA8jcOhn9apY+QkuV7IhgoDEp54JFt8OHfNCM6nXm/
UMlIAdMt+UxY5mhpsnBGLYMsN3sOj7OQMPKCP6vkozP4Aq3+eswRKExefaC1hq/YKD5I+u9F
/8QXOTpr8tzcB3SNrBiA8tPPY+ETo94DQRL7YE2ivE6enFEnxYA3ez5Uv3vFG/tKJidySi/y
LRsuDJwX+k4nbDzlkikrltexZ6vqoJXUzxpxE4GF+VkGTK7kz29kP/e4kpKfCgY9q6c/eXJG
nQhZMljJ6neveA85jL30JNb0RWMAAAABGQOsxut7fvDkp7L8WX6JN6E/9VdE7gocAh4AhsHp
C9MnYxNhAuInAAAw43JuIqzfvdJ4Z6/xzt7wmwIAAJhQ2QMsr7Ev0D4oIvXbV+q3H0tikdMC
AAA4lHqI0WEfIQxrBgBAGZTkG3lndyehcGd3x38UXdOe/PtgTbTwECBx9xMNj3clx0c00Usm
q/Nm+CjiCjOskrCdyEFN+5bMuMg3WNxINiN90/K2QUqB9+dAb8uwCfrLHsTc1DX5TkEpV5n6
N3ly2LSzu3N69XTc06LkP0xD+R2IHByfCIi7f3tc+TQ50G5fr49oHy7MsErydjAK43nT8rZB
Sn4gle1tqV9sOFkXHkYeZvKxp19l6j8XcQFTSQKpOLMYYHmfyANtOvumtBNE+P5Qk5i+Kklt
+553dEVXtkjhr6iBbjaQ15uWtw2yCdyha5rOpboCc1f6KO1+SfhOayX/UPSNosoZZs1cE+FB
1NMcP7X8yB5e31y33mowuefc8piONy1vmwmSJmCajrelfywpCzOs0vfN7L/hA/dwC99pjY9G
vmYuwNLTVxITWgWaBfuWT58Cfy8GPuFTc4YdHf/GZIH7uHnG+ablbYO+Ao2/Mu3n0jJIf3Oh
yfpblL/dcOYCLNGyVl4frPAbKrljuxwmVCfrvTiQ8C+b8Uh4zcMLTPefIC/jfNPytkEagRMs
f5Fi6SEvf4h8JQZYqujajcZcaCJ6MS0xkGYx0W6cGXmjePSV/huak/IwpuxNy9tmEkVeRTRN
b8sJMk1NhOVJX8lsdnJHAtpWJlHkhe7jxNsGKZW8M/UMmqY/R6miK5nNJsL09N9PMht9sCLT
xZGF/m+d9KukzEV7i6W5LqbvpjCeNy1vG6QUOKkKf4jjxp9DmtAmwnAsVbboSgiwAsJvrzRv
uGxrlVbKC1X6dpwc9IKX8AbjdjrRL++IDPomzP1Ny9sGKaX8ayYsPKF/yjTHkvw0w2sS94lL
3/N9InjDkOqDkZYh2CLAAgAAZafHTIH4qQzhVBh9sAAAAHJGgAUAAJAzAiwAAICcEWABAADk
jAALAAAgZwRYAAAAOfv/ASlyH675/2qvAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDI0LTExLTA3
VDIzOjA1OjExLTA4OjAw3PwVZgAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyNC0xMS0wN1QyMzow
NToxMS0wODowMK2hrdoAAAAASUVORK5CYII=

--------------aqhHuWiye57NstEf0XrkQOoS--

--------------Q7LRReoFs9bwQMqu90bnQ9Sr--

--===============1403572103538933110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1403572103538933110==--
