Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A84A20AB83
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 06:53:12 +0200 (CEST)
Received: from [::1] (port=57994 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jogMO-0002Np-NC; Fri, 26 Jun 2020 00:53:08 -0400
Received: from mail-qv1-f52.google.com ([209.85.219.52]:35403)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jogMK-0002KL-P9
 for USRP-users@lists.ettus.com; Fri, 26 Jun 2020 00:53:04 -0400
Received: by mail-qv1-f52.google.com with SMTP id g11so3970168qvs.2
 for <USRP-users@lists.ettus.com>; Thu, 25 Jun 2020 21:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=JbZC5ab086Gh89jARQFjrHUA6XewoBA8Rv7UP6swEbc=;
 b=hVh2X6fw1EiU7EIqyiZfyfqH+BQdJi4JJqS7b/OBkxsNoOmzzdWcKfmYMT2jbmxNvW
 5CSaoAiaxdmoYSBsWjZioyJPZd7Dx4whKHdxWrq4JZbXASJx9P0NogmGgx0IbTywq4TX
 Oejr3esSoVDk3djohCDYRcZJ/fjKKt0stGzorRg/BsTBPn9hpoX5sHPPaI3RvCNbuNrG
 IOHUNAz+R8BkQvjYb6ZBiO3B0Ejs4ZQW3AHlrKVU4empqMMBQqpnqTAxWPtEqgWJZ4vW
 kFosLnYivH3xKM8uWflZxMHHX/4QAZPZM/WSY9KNC+D+xkULuphVtjoPYwgNaJ3Rnnt5
 b/MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=JbZC5ab086Gh89jARQFjrHUA6XewoBA8Rv7UP6swEbc=;
 b=gq4Yi5Xrwy5E//jIiZ4aLJ7tYG7qM0ANlLpmgdFQs8eub5ImwGzngc5QK+qmrt+O2W
 C1hpb8SemVFq7yUUAoReLQzLj95aSRdUW4Fa1nWxWBTfbDto6IFGkM+joVgWp20YkrEx
 /O1wksKTWHj43TYoDekbX+lXQPVzxO6VzCIeVuJWfiQVgRISN53t0FxyYWVQgBnf54Tc
 hNgWZBsJNr23DqOoeiPnmf7gGZHkzvMMLjGoxfLKpb0chBlc0a2+XMYWO4Wuyz0DU9p0
 XQLooFvAKck0qYTt4l59pCIGd8ML5ajIKQUybBaXAV4tgAaPnfPmP8X8r3iRnLHzntjB
 K58A==
X-Gm-Message-State: AOAM531EZB+p5r4KkWsqVwfvDdum0T1RWc8NWkZSsxwqTZxNBgG3JaH5
 ZOej0JecJK1hGzGTdjycbiigyBZIxhg=
X-Google-Smtp-Source: ABdhPJynHUeE6osIp/eLWuOyeSh7dD0TZ/HH8ctsuUmtfjImtRuptq36YKlNFUhK2DsL4s6smnZBcA==
X-Received: by 2002:ad4:48cf:: with SMTP id v15mr1445356qvx.101.1593147144062; 
 Thu, 25 Jun 2020 21:52:24 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id c80sm7342289qke.26.2020.06.25.21.52.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Jun 2020 21:52:23 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 26 Jun 2020 00:52:22 -0400
Message-Id: <AD5A4B8C-3C03-4048-8A30-EB4AFA2F98D0@gmail.com>
References: <CA+w2Zys99gQ5sY9qOtQX-xXi5sYrk9rhEAn=AQ9SSXsm+K=O4Q@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CA+w2Zys99gQ5sY9qOtQX-xXi5sYrk9rhEAn=AQ9SSXsm+K=O4Q@mail.gmail.com>
To: David Carsenat <carsenat@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] b205 RX -> TX loopback
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
Content-Type: multipart/mixed; boundary="===============4624542325655610458=="
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


--===============4624542325655610458==
Content-Type: multipart/alternative; boundary=Apple-Mail-CB920713-7556-47E4-B3E5-A6635F2CA246
Content-Transfer-Encoding: 7bit


--Apple-Mail-CB920713-7556-47E4-B3E5-A6635F2CA246
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

=46rom what I recall of the architecture that=E2=80=99s the case. The AD9361=
 has built in DSP functions.=20

Sent from my iPhone

> On Jun 26, 2020, at 12:37 AM, David Carsenat <carsenat@gmail.com> wrote:
>=20
> =EF=BB=BF
> OK thanks. So you confirm the link between UHD sample rate and AD93xx samp=
le rate ?
>=20
> David
>=20
>> Le ven. 26 juin 2020 =C3=A0 00:23, Marcus D. Leech via USRP-users <usrp-u=
sers@lists.ettus.com> a =C3=A9crit :
>> On 06/25/2020 03:04 PM, David Carsenat via USRP-users wrote:
>> > Hello.
>> > We are trying to make a simple RX on TX loopback by changing the FPGA=20=

>> > image.
>> > We get it by adding a wire between the DDC output and DUC input, but=20=

>> > we are still limited by the sample rate we specify via UHD.
>> >  We have specified the analog bandwidth at 56 MHz, and the master=20
>> > clock rate at 60 MHz, but no change.
>> > Same behaviour if we add a wire before the DDC and DUC. We suspect=20
>> > a link between UHD sample rate and AD9364 sample rate.
>> > Is there a way to have the full rate(56 MHz) available on the loopback=20=

>> > despite, for example, 1MHz sample rate specified via UHD ?
>> >
>> > We could also put the sample rate of 56 MHz but the underflow and=20
>> > overflow cut the RF signal, perhaps there is a way to avoid this=20
>> > phenomenon also.
>> >
>> > Thanks a lot.
>> >
>> > David
>> >
>> My suggestion would be to wade even deeper into the FPGA and have it not=20=

>> send samples to the host or always only send them at 1Msps, or
>>    something.   But regardless, there's no "simple button I can push" to=20=

>> make this happen.
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-CB920713-7556-47E4-B3E5-A6635F2CA246
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">=46rom what I recall of the architecture th=
at=E2=80=99s the case. The AD9361 has built in DSP functions.&nbsp;<div><br>=
<div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Jun 26, 2020, at 12:37 AM, David Carsenat &lt;carsenat@gmail=
.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=
=3D"ltr">=EF=BB=BF<div dir=3D"ltr">OK thanks. So you confirm the link betwee=
n UHD sample rate and AD93xx sample rate ?<div><br></div><div>David</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le&n=
bsp;ven. 26 juin 2020 =C3=A0&nbsp;00:23, Marcus D. Leech via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; a =C3=A9crit&nbsp;:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">On 06/25/2020 03:04 PM, David Carsenat via USRP-users wrote:<br>
&gt; Hello.<br>
&gt; We are trying to make a simple RX on TX loopback by changing the FPGA <=
br>
&gt; image.<br>
&gt; We get it by adding a wire between the DDC output and DUC input, but <b=
r>
&gt; we are still limited by the sample rate we specify via UHD.<br>
&gt;&nbsp; We have specified the analog bandwidth at 56 MHz, and the master <=
br>
&gt; clock rate at 60 MHz, but no change.<br>
&gt; Same behaviour if we add a wire before the DDC and DUC. We suspect <br>=

&gt; a link between UHD sample rate and AD9364 sample rate.<br>
&gt; Is there a way to have the full rate(56 MHz) available on the loopback <=
br>
&gt; despite, for example, 1MHz sample rate specified via UHD ?<br>
&gt;<br>
&gt; We could also put the sample rate of 56 MHz but the underflow and <br>
&gt; overflow cut the RF signal, perhaps there is a way to avoid this <br>
&gt; phenomenon also.<br>
&gt;<br>
&gt; Thanks a lot.<br>
&gt;<br>
&gt; David<br>
&gt;<br>
My suggestion would be to wade even deeper into the FPGA and have it not <br=
>
send samples to the host or always only send them at 1Msps, or<br>
&nbsp; &nbsp;something.&nbsp; &nbsp;But regardless, there's no "simple butto=
n I can push" to <br>
make this happen.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-CB920713-7556-47E4-B3E5-A6635F2CA246--


--===============4624542325655610458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4624542325655610458==--

