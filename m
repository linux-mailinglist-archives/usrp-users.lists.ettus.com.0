Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 618642D1955
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 20:21:59 +0100 (CET)
Received: from [::1] (port=38984 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmM58-0006UU-BC; Mon, 07 Dec 2020 14:21:58 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:45968)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kmM54-0006OB-Hx
 for USRP-users@lists.ettus.com; Mon, 07 Dec 2020 14:21:54 -0500
Received: by mail-qk1-f172.google.com with SMTP id q5so13590643qkc.12
 for <USRP-users@lists.ettus.com>; Mon, 07 Dec 2020 11:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=OKdbBz33PPPJ+m0N16LQiZKMey8WSDsgABY4go4R5Rs=;
 b=WXDWq/NbUSs0X9FEiO/Qv/Tmt3eNdxs5R0+ar7FVAcH6hAv60oy/+xLZhhoALrdx1r
 g7alsEwDxRjeXZnK2OTETlV/5cadjMyH17c8JlIhfh+oKz6R8SCXLlemkuWot7VlenJ+
 ERFHBwQDLUr8K9+FCd5/6dgL96KtryqCfyyuTJiE/57XeWD0iG5A9kmKOCXfOLJTAkYV
 c+ZRf62oaCG1sLF1o9rj2KMmidlkTnBu5Zw/sAIybjJm5MUURdSdcI9OYx4qNj5w1ov+
 PrwJ1ciSamzi2aVdjXC0Lf7yIc6INtEQzExfY4jqlFXsisMH3nvEM4Wp3VsBF/PB2iVs
 VbHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=OKdbBz33PPPJ+m0N16LQiZKMey8WSDsgABY4go4R5Rs=;
 b=lIt3YmzG+l6sR3j12nK5kb349DcyAQIS982RSsgFMq73i+OwjohtP8yvfd+LFIkcKK
 AFlw1rPjgfNc56rtTCv6MZR5zgqOueN8U4xHLuqAMFNxKqX16MvlD5lx1oYwZG7idwVa
 sN1r972WpE9qi0bO5+d+qkNgGmmch7iFdW97ry40ZvKV0LlOERdqIZDRkmJvPkxMaRw3
 O/aRw8kHmrtb+06H6qWn4DJR2jnT+sj83FqG4QTusxvCJFUjhFgmg+ePVHpRDzrltuPa
 U5F6Dqjk9BCRtQsguUaUS9uF7bg7oHPuPR8vdIGHh6Gt3P7rwRdQbJiJwYv0ueit3IKj
 XzlA==
X-Gm-Message-State: AOAM53045t6FfTpEKoWNTlmMXm+SPie+XwMT+jD/bStRTH0/R8vZoObp
 NYBaC7tfuzVYl2XZJfdMVyU=
X-Google-Smtp-Source: ABdhPJz9Eai9YqUqajnraglU86SN/S5JpGlrPxLPaHqiTDRmzEJEH/yi7xaLMcCfZDSTtibwXhe3Gg==
X-Received: by 2002:ae9:ef12:: with SMTP id d18mr26502569qkg.473.1607368874025; 
 Mon, 07 Dec 2020 11:21:14 -0800 (PST)
Received: from ?IPv6:2605:b100:d17:91c0:1d4b:43c5:48c2:37b2?
 ([2605:b100:d17:91c0:1d4b:43c5:48c2:37b2])
 by smtp.gmail.com with ESMTPSA id b197sm12710270qkg.65.2020.12.07.11.21.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Dec 2020 11:21:13 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 7 Dec 2020 14:21:11 -0500
Message-Id: <988BF083-D469-4DFB-BDDB-68CF5C4873E0@gmail.com>
References: <CAB__hTTTrKsP7Qi636OHcuMb8GFW-wre9Yx+pXH==+NACaTaAA@mail.gmail.com>
In-Reply-To: <CAB__hTTTrKsP7Qi636OHcuMb8GFW-wre9Yx+pXH==+NACaTaAA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] USRP B200 Function Question
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4983288733885967937=="
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


--===============4983288733885967937==
Content-Type: multipart/alternative; boundary=Apple-Mail-9F8B46F9-B74E-46C1-81AB-0237EB85D75A
Content-Transfer-Encoding: 7bit


--Apple-Mail-9F8B46F9-B74E-46C1-81AB-0237EB85D75A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Similarly it=E2=80=99s easy to get B2xx working with a super cheap SBC like t=
he rPi boards or Odroids etc.=20

Sent from my iPhone

> On Dec 7, 2020, at 2:16 PM, Rob Kossler via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
>=20
> =EF=BB=BF
> Mark,
> Just this past Friday, I had success controlling a B200mini directly from a=
n N310 using the USB2 port on the N310.  Such a use case limits you to USB2 s=
treaming for the B2xx and it also hogs CPU cycles from the N310.  Let me kno=
w if this is of interest to you I can can provide more info.
> Rob
>=20
>> On Mon, Dec 7, 2020 at 1:56 PM Mark McAllister via USRP-users <usrp-users=
@lists.ettus.com> wrote:
>> My senior design team at California State University Northridge is curren=
t using a USRP N210 as a  local oscillator for a smart antenna array.=20
>>=20
>> We're considering purchasing something from the B200 series in order to r=
eplace it since we are current borrowing our N210.=20
>>=20
>> Our concern is that the B200 specifies the use of USB 3.0 for connecting t=
o a host computer, and we are currently connecting both an N210 and N310 to a=
 router which connects all signals to a host computer.
>>=20
>> My main question is whether or not the B200 series will run properly usin=
g a USB to Ethernet adapter or if the device MUST be connected directly to t=
he host computer via USB.=20
>>=20
>> Thank you for your time,=20
>> Mark McAllister
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-9F8B46F9-B74E-46C1-81AB-0237EB85D75A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Similarly it=E2=80=99s easy to get B2xx wor=
king with a super cheap SBC like the rPi boards or Odroids etc.&nbsp;<br><br=
><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Dec 7, 2020, at 2:16 PM, Rob Kossler via USRP-users &lt;usrp=
-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Mark,<div>Just this pas=
t Friday, I had success controlling a B200mini directly from an N310 using t=
he USB2 port on the N310.&nbsp; Such a use case limits you to USB2 streaming=
 for the B2xx and it also hogs CPU cycles from the N310.&nbsp; Let me know i=
f this is of interest to you I can can provide more info.</div><div>Rob</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Dec 7, 2020 at 1:56 PM Mark McAllister via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D=
"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size=
:13px"><div dir=3D"ltr">My senior design team at California State University=
 Northridge is current using a USRP N210 as a&nbsp; local oscillator for a s=
mart antenna array. <br><br><div>We're considering purchasing something from=
 the B200 series in order to replace it since we are current borrowing our N=
210. <br></div><div><br></div><div dir=3D"ltr">Our concern is that the B200 s=
pecifies the use of USB 3.0 for connecting to a host computer, and we are cu=
rrently connecting both an N210 and N310 to a router which connects all sign=
als to a host computer.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"=
>My main question is whether or not the B200 series will run properly using a=
 USB to Ethernet adapter or if the device MUST be connected directly to the h=
ost computer via USB. <br><br><div>Thank you for your time, <br></div><div d=
ir=3D"ltr">Mark McAllister<br></div></div></div></div></div>________________=
_______________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-9F8B46F9-B74E-46C1-81AB-0237EB85D75A--


--===============4983288733885967937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4983288733885967937==--

