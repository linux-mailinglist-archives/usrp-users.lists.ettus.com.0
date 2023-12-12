Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 599CE80F625
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 20:11:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 10ED33850F2
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 14:11:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702408279; bh=EvmuebTFVLhtWSnYUenufMXPrYg3ESdhNwangCXVvSE=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Wd0jl1/5/mzhNLyx/SIVLnnthi16krZyXtCAgKT3J6B5xSOz2tu/U2OIevzTyfOF+
	 IqODnDnL4h+tFXP2pVkVKVXfGxQb+uQhPtA4AoTzQZYJg1Owh4KhTWmvQdpYzrHQRp
	 57MClFdNrgh0sf5UGxduLUj1svmeeymtXbw+vtvHWEn5MB3D0SzJGi4fhxBOhbxJPR
	 Z+R6eKd/6XDn30EaT4QsVxeZIzsY5mQA9+ipW/3zv+VKL5IEsyLaTrIKvmt7nKin13
	 DCeePMnElwt31OzJKdqaW6ddenBRcEPm4mudiAswgS+zj4Km4pmvvuUsc6EdsHbi33
	 oQsTFiCcVmQLQ==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id A56583850D7
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 14:11:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WaHq7V4I";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-551e6b99490so324700a12.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 11:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702408271; x=1703013071; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/f+XTDq7KKpcjo87iF/wQfDm026VnsCEf8ltuoP5+cw=;
        b=WaHq7V4IOqroyfVq4jGfma+4UdmKzh8716TUZbGnYRwazWseoSNFd3i8to7hcydROh
         hBeMhH4PfSdvHFw4C1YdsOR1rPlxyI04PBoto0/ps4Z9jF3fpAXh15hrC6vDTyObPPeW
         /MXQdzc5KWb8+swxyCyOkUbEse/lExdFVjznTQSCflpQqfx5CrlXOj7VY+hI5Jku0Ytw
         0PDaB5a3IDG2JxiR9HcTvJ79cGS3KkMjQU1xxFErdJEf+Zr/bBUO6Q8VKZrk7yXQOiZe
         rSSyikoJO7Jhw8Sr7Nd5ztCD93V0G9Az5JRXpgBBajwZX82ePD4uHNG4OrHNAnmS/X2r
         jRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702408271; x=1703013071;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/f+XTDq7KKpcjo87iF/wQfDm026VnsCEf8ltuoP5+cw=;
        b=hob9AVUq/pxCGwTZeVV4i6yT5WPXNcWKLeje7M1IA+lrAdw6vlLN/39LqQpvrtYl+U
         rQ2c0JDiU0PiQi46YPMskDHS00dH7DRxTGJDmJPy09oeEBpf8NwMbwO4sbAiekQz5WQL
         0cFE9YvrCNP3OIwj+KnhUnf4SZQX1vKGpQZrUK08XkQk+BdSu94hDAVQpK7Pu/wo+cm7
         grpTq3kr03nYijkf5Xjtud2XCce/i8me34lG78nu3l7Ut52676gDMzU2G1ITh7Sjrzk8
         GH4dcTuHBe+FyNg2gRgsikB0DGKb8gPEWuuZUK4eyIyFH+fNxG6ua9RWp6dTGsljBriA
         aQ4Q==
X-Gm-Message-State: AOJu0YyClGX76U4Jp+y6XB0Z0AA51GwPDmWEa2HbkERX/pcffDUr1OS4
	61oFhG+vHopMfrG3ceVrQ+VydV53l8JrMBYFkEK5Ar1odM+4V/eo
X-Google-Smtp-Source: AGHT+IHUiIT2TxYQjKhBIFHeyUvgy53w6HtutRPvxh85gpJpXP5vns2fVacL37Q4iav+PC4DKmUB7NERAsoGCt+9vO0=
X-Received: by 2002:a50:d6c1:0:b0:54d:4ea:14ab with SMTP id
 l1-20020a50d6c1000000b0054d04ea14abmr2108334edj.87.1702408271239; Tue, 12 Dec
 2023 11:11:11 -0800 (PST)
MIME-Version: 1.0
References: <d5wLWbtyVjlMPaXu8gg1CdxcANAH6cK6ipECboGVS10@lists.ettus.com>
In-Reply-To: <d5wLWbtyVjlMPaXu8gg1CdxcANAH6cK6ipECboGVS10@lists.ettus.com>
Date: Tue, 12 Dec 2023 14:10:59 -0500
Message-ID: <CAB__hTTFF0xMaCZAQY6UwQ88mhgUCR3D-uePYnpnvhBuwSwOYA@mail.gmail.com>
To: mamuki92@gmail.com
Message-ID-Hash: O5VM7AG6RCNOJBVPAMT53LIY46TZFRSB
X-Message-ID-Hash: O5VM7AG6RCNOJBVPAMT53LIY46TZFRSB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O5VM7AG6RCNOJBVPAMT53LIY46TZFRSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7087798081028610579=="

--===============7087798081028610579==
Content-Type: multipart/alternative; boundary="000000000000454f7d060c54d089"

--000000000000454f7d060c54d089
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,
The UHD "register_property" callback function (in this case a lambda
function that calls peek) only gets executed when the "dirty" property gets
marked "clean". Otherwise, if you query the property when it is already
considered "clean" by UHD, it simply returns the current property value
(without executing this "peek"). So, my workaround is to force UHD to know
that the property is "dirty" by setting it to something different than the
current value.  This is admittedly a hack. If gnuradio offers another
mechanism for calling custom RFNoC block functions (different from using
properties as you have done), this may be the most straightforward solution=
.
Rob

On Tue, Dec 12, 2023 at 11:55=E2=80=AFAM <mamuki92@gmail.com> wrote:

> Hi Rob,
>
> Thanks for your answer.
>
> I=E2=80=99m not 100% sure but what I think is that the get_int_property f=
unction
> in python/gnuradio calls the peek function in c++/UHD as I have to write
> that on my block controller:
>
>
> register_property(&_test_reg, this
> <https://lists.ettus.com/empathy/thread/63G6RSRBYHD666IP2PG6OOFSZC47ZQX6>=
 {
>
> int test_reg =3D this->regs().peek32(REG_TEST_ADDR);
> this->_test_reg.set(test_reg);        })
>
> But as you said, probably do it through the get_int_property does not
> update the value.
>
> I will try the workaround you suggest and see.
>
> Kind regards,
>
> Maria
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000454f7d060c54d089
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Maria,<div>The UHD &quot;register_property&quot; callba=
ck function (in this case a lambda function that calls peek) only gets exec=
uted when the &quot;dirty&quot; property gets marked &quot;clean&quot;. Oth=
erwise, if you query the property when it is already considered &quot;clean=
&quot; by UHD, it simply returns the current property value (without execut=
ing this &quot;peek&quot;). So, my workaround is to force UHD to know that =
the property is &quot;dirty&quot; by setting it to something different than=
 the current value.=C2=A0 This is admittedly a hack. If gnuradio offers ano=
ther mechanism for calling custom RFNoC block functions (different from usi=
ng properties as you have done), this may be the most straightforward solut=
ion.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Dec 12, 2023 at 11:55=E2=80=AFAM &lt;<a hre=
f=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Rob,</p><p>Thanks f=
or your answer.</p><p>I=E2=80=99m not 100% sure but what I think is that th=
e get_int_property function in python/gnuradio calls the peek function in c=
++/UHD as I have to write that on my block controller:</p><p><br><code>regi=
ster_property(&amp;_test_reg,=C2=A0</code><a href=3D"https://lists.ettus.co=
m/empathy/thread/63G6RSRBYHD666IP2PG6OOFSZC47ZQX6" target=3D"_blank"><code>=
this</code></a><code>=C2=A0{=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>i=
nt test_reg =3D this-&gt;regs().peek32(REG_TEST_ADDR);<br>this-&gt;_test_re=
g.set(test_reg);=C2=A0 =C2=A0 =C2=A0 =C2=A0 })</code><br><br></p><p>But as =
you said, probably do it through the get_int_property does not update the v=
alue.</p><p>I will try the workaround you suggest and see.</p><p>Kind regar=
ds,</p><p>Maria</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000454f7d060c54d089--

--===============7087798081028610579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7087798081028610579==--
