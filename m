Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 947A2481EBD
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 18:48:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45B1B384A37
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 12:48:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Inywuf3G";
	dkim-atps=neutral
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 317C2384714
	for <usrp-users@lists.ettus.com>; Thu, 30 Dec 2021 12:47:51 -0500 (EST)
Received: by mail-oo1-f50.google.com with SMTP id y13-20020a4a624d000000b002daae38b0b5so8047694oog.9
        for <usrp-users@lists.ettus.com>; Thu, 30 Dec 2021 09:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vIHlnuqDni1550/mpflTICIP9ELEC615MOfnpG6UpC4=;
        b=Inywuf3G5cTV70MyDgOSsnwLcmhEAbC+PRv5fZvRWGzJjfyi5LhKv3c77TdPgH91j2
         JjrL1ckYKH1TsZJlZQ5lJFBc1+nAV6MvRNMVHPmo28rX91TEHNIPuz2r2KFQdsRAi0Hw
         LF7JhnI54FIQjWOdGCgGaaZ8M+3AbDjgfQpWn2YnP20vNmN2bJ3JgJpSzwDf7PmSEzAN
         1jgLqIm5Q18UiCOwoKGh6Xfaji26FRUYO4CMOCYfXlwrUmQ4FRWUnlJT/5HSpubyE/Jk
         gEeH9cARDa55LzoFu3U09b+6VDnGg0zbEfk+dqrtdpKv+7Y2MRD9hm3eTf0UeADFj2IH
         LbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vIHlnuqDni1550/mpflTICIP9ELEC615MOfnpG6UpC4=;
        b=DfoqR4xw9+5qp36tZ1rrU63SXl2kqHDvlTIRAop7Y9ZN0ryMxwbc304QBPOiPbQ5vX
         MARIDpJX5+SFj12S660s7j17ywZkvj54fzMyr3mFfkOcy1MxRroXnJgz9qpO2bO09DoC
         JT+TRwTTsOAQMBUIxRrw2QYx8Jal+1h3kWjPaE+3mLi6qKKoYHmh5qmtCbyyB+QgIX0s
         8QNhfNBr6206n3S70ISYdMTEwx5WeunDuF47kZbsJGISC3QqU+jPRigzxmNJgFdkuiYT
         n1zysS/xBuSGjQ7+xFGFxFHi4IEtQ0+MbpqD5nOpHw/Iq+Ys5vh7AbpiXNLG/jaUYMzo
         jeAQ==
X-Gm-Message-State: AOAM533I2dR21/4i+CidSx7VSOXZxM4Kh4ksO/uqx5nO33zadVmLiEnz
	6KWS/7numuOXrLSc3RemUaIXRGVMsF/tMhKHgC+BTUCv
X-Google-Smtp-Source: ABdhPJzjp+gUArylD/AcAf8rLhjqJqGrnZJ3f4T5hRY5npofoVGRLclw3cgCDzx+i0j+h7/O0E6H39KVaabYrCrh/4Q=
X-Received: by 2002:a4a:8d46:: with SMTP id x6mr19433401ook.95.1640886470348;
 Thu, 30 Dec 2021 09:47:50 -0800 (PST)
MIME-Version: 1.0
References: <d2b097dd-2a62-773f-c99b-c23b488d042a@gmail.com>
 <7DDDD8E6-C74E-4533-A528-A0A7A2063407@gmail.com> <8426d377-c8c8-a0ad-5043-2935c45fa212@gmail.com>
 <BY5PR10MB42289F6C91D0D3F7FACA5E92AB459@BY5PR10MB4228.namprd10.prod.outlook.com>
In-Reply-To: <BY5PR10MB42289F6C91D0D3F7FACA5E92AB459@BY5PR10MB4228.namprd10.prod.outlook.com>
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Thu, 30 Dec 2021 20:47:39 +0300
Message-ID: <CANP_axJTtozvvepB_Mu4kPAU6R9KdzDJ7F4wktLC4gfK-cX58A@mail.gmail.com>
To: Robin Coxe <coxe@close-haul.com>
Message-ID-Hash: 6BOTRMB2G5FG5RD5XUKJ2AKWC2JJSBFV
X-Message-ID-Hash: 6BOTRMB2G5FG5RD5XUKJ2AKWC2JJSBFV
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Paul Atreides <maud.dib1984@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E330 and rx-only USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6BOTRMB2G5FG5RD5XUKJ2AKWC2JJSBFV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2388597742598396902=="

--===============2388597742598396902==
Content-Type: multipart/alternative; boundary="0000000000002e942505d460a770"

--0000000000002e942505d460a770
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That's a shame, a device such as E330 would have filled a useful niche.
In any case, thanks for the nice history detour and happy new year to all!

Best,
Temir

On Thu, Dec 30, 2021 at 5:35 PM Robin Coxe <coxe@close-haul.com> wrote:

> The E330 is not the Quad Radio, which was a custom product.   The E330 wa=
s
> an Rx-only daughtercard for the E310 motherboard that was announced at
> GRCon 2016 but was mothballed by NI.
> ------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, December 29, 2021 10:22:15 PM
> *To:* Paul Atreides <maud.dib1984@gmail.com>
> *Cc:* Robin Coxe <coxe@close-haul.com>; Temir Karakurum <
> temirkarakurum@gmail.com>; usrp-users@lists.ettus.com <
> usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: E330 and rx-only USRPs
>
> On 2021-12-29 22:18, Paul Atreides wrote:
>
> That was the QuadRadio!
>
> RIght!   It has been so long, I'd forgotten the name :)
>
>
> <end transmission>
>
> On Dec 29, 2021, at 22:09, Marcus D. Leech <patchvonbraun@gmail.com>
> <patchvonbraun@gmail.com> wrote:
>
> =EF=BB=BF
> On 2021-12-29 21:50, Robin Coxe wrote:
>
> The only receive-only USRP product is the TwinRx daughtercard for the
> X310.
>
> Thanks Robin.  I'd already mentioned this.
>
> But there *WAS* a product (not in the NI catalog) many years ago that
> Ettus was building on an order-by-order basis that was
>   a 4-channel (or was it 8?) RX-only device, using a YiG-based
> synthesizer.  I think it was likely before your time at Ettus/NI.
>
> In my guise as a radio astronomer and manager of a radio-astronomy
> observatory, I'd love a many-channels, brutally-coherent, RX-only
>   device.  But the market is small....
>
>
> ------------------------------
> *From:* Marcus D Leech <patchvonbraun@gmail.com> <patchvonbraun@gmail.com=
>
> *Sent:* Wednesday, December 29, 2021 12:35:25 PM
> *To:* Temir Karakurum <temirkarakurum@gmail.com>
> <temirkarakurum@gmail.com>
> *Cc:* USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
> <USRP-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: E330 and rx-only USRPs
>
> There has never been a. E330 product offering.
>
> Sent from my iPhone
>
> On Dec 29, 2021, at 12:33 PM, Temir Karakurum <temirkarakurum@gmail.com>
> <temirkarakurum@gmail.com> wrote:
>
> =EF=BB=BF
> Hi Marcus,
>
> Thanks for promptly replying. Has E330 ever been offered for purchase? If
> so, has it been discontinued?
>
> Best,
> Temir
>
> On Wed, Dec 29, 2021 at 8:31 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
> The TwinRx daughter cards for X310.
>
> Sent from my iPhone
>
> On Dec 29, 2021, at 12:30 PM, Temir Karakurum <temirkarakurum@gmail.com>
> wrote:
>
> =EF=BB=BF
> Hi there,
>
> I recently came across a presentation by Matt Ettus at grcon16
> <https://youtu.be/kEAkIfWViQo?t=3D1254>, where he introduces E330 as a
> receive-only alternative for E-series USRPs. I checked Ettus store as wel=
l
> as googled for some info about E330 but could not find anything useful. H=
as
> it ever been offered as a product by Ettus or NI?
>
> As a general question, most of my applications are receive-only in nature
> (spectrum monitoring etc.) and usually Tx channels of the USRPs end up
> redundant. Is it possible to purchase rx-only devices?
>
> Best regards,
> Temir
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>

--0000000000002e942505d460a770
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That&#39;s a shame, a device such as E330 would have fille=
d a useful niche.<div>In any case, thanks for the nice history detour and h=
appy new year to all!</div><div><br></div><div>Best,</div><div>Temir</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Dec 30, 2021 at 5:35 PM Robin Coxe &lt;<a href=3D"mailto:coxe@close-=
haul.com">coxe@close-haul.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div dir=3D"ltr">The E330 is not the Quad Radio, which was a custom product=
. =C2=A0 The E330 was an Rx-only daughtercard for the E310 motherboard that=
 was announced at GRCon 2016 but was mothballed by NI. =C2=A0</div>
<div id=3D"gmail-m_6371916385541501346ms-outlook-mobile-signature" dir=3D"l=
tr">
<div></div>
</div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_6371916385541501346divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, December 29, 2021 10:22:15 PM<br>
<b>To:</b> Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com" targ=
et=3D"_blank">maud.dib1984@gmail.com</a>&gt;<br>
<b>Cc:</b> Robin Coxe &lt;<a href=3D"mailto:coxe@close-haul.com" target=3D"=
_blank">coxe@close-haul.com</a>&gt;; Temir Karakurum &lt;<a href=3D"mailto:=
temirkarakurum@gmail.com" target=3D"_blank">temirkarakurum@gmail.com</a>&gt=
;; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: E330 and rx-only USRPs</font>
<div>=C2=A0</div>
</div>
<div>
<div>On 2021-12-29 22:18, Paul Atreides wrote:<br>
</div>
<blockquote type=3D"cite">That was the QuadRadio!<br>
</blockquote>
RIght!=C2=A0=C2=A0 It has been so long, I&#39;d forgotten the name :)<br>
<br>
<blockquote type=3D"cite"><br>
<div dir=3D"ltr">&lt;<span>end transmission&gt;</span></div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Dec 29, 2021, at 22:09, Marcus D. Leech <a hre=
f=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">
&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div>On 2021-12-29 21:50, Robin Coxe wrote:<br>
</div>
<blockquote type=3D"cite">
<div>
<div>
<div dir=3D"ltr" style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">The only receive-only USRP product is the TwinRx daughtercard for the X3=
10.=C2=A0
<br>
</div>
</div>
</div>
</blockquote>
Thanks Robin.=C2=A0 I&#39;d already mentioned this.<br>
<br>
But there *WAS* a product (not in the NI catalog) many years ago that Ettus=
 was building on an order-by-order basis that was<br>
=C2=A0 a 4-channel (or was it 8?) RX-only device, using a YiG-based synthes=
izer.=C2=A0 I think it was likely before your time at Ettus/NI.<br>
<br>
In my guise as a radio astronomer and manager of a radio-astronomy observat=
ory, I&#39;d love a many-channels, brutally-coherent, RX-only<br>
=C2=A0 device.=C2=A0 But the market is small....<br>
<br>
<br>
<blockquote type=3D"cite">
<div>
<div></div>
<div id=3D"gmail-m_6371916385541501346x_ms-outlook-mobile-signature"></div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_6371916385541501346x_divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Marcus D Leech
<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">&lt;patchvonbr=
aun@gmail.com&gt;</a><br>
<b>Sent:</b> Wednesday, December 29, 2021 12:35:25 PM<br>
<b>To:</b> Temir Karakurum <a href=3D"mailto:temirkarakurum@gmail.com" targ=
et=3D"_blank">
&lt;temirkarakurum@gmail.com&gt;</a><br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a> <a href=3D"mailto:USRP-users@lists.ettus.com=
" target=3D"_blank">
&lt;USRP-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: E330 and rx-only USRPs</font>
<div>=C2=A0</div>
</div>
<div dir=3D"auto">There has never been a. E330 product offering.=C2=A0<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Dec 29, 2021, at 12:33 PM, Temir Karakurum <a =
href=3D"mailto:temirkarakurum@gmail.com" target=3D"_blank">
&lt;temirkarakurum@gmail.com&gt;</a> wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div dir=3D"ltr">
<div>Hi Marcus,</div>
<div><br>
</div>
<div>Thanks for promptly replying. Has E330 ever been offered for purchase?=
 If so, has it been discontinued?</div>
<div><br>
</div>
<div>Best,</div>
<div>Temir</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Dec 29, 2021 at 8:31 PM Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"auto">The TwinRx daughter cards for X310.=C2=A0<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Dec 29, 2021, at 12:30 PM, Temir Karakurum &lt=
;<a href=3D"mailto:temirkarakurum@gmail.com" target=3D"_blank">temirkarakur=
um@gmail.com</a>&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div dir=3D"ltr">Hi there,
<div><br>
</div>
<div>I recently came across a presentation by Matt Ettus at <a href=3D"http=
s://youtu.be/kEAkIfWViQo?t=3D1254" target=3D"_blank">
grcon16</a>, where he introduces E330 as a receive-only alternative for E-s=
eries USRPs. I checked Ettus store as well as googled for some info about E=
330 but could not find anything useful. Has it ever been offered as a produ=
ct by Ettus or NI?</div>
<div><br>
</div>
<div>As a general question, most of my applications are receive-only in nat=
ure (spectrum monitoring etc.) and usually Tx channels of the USRPs end up =
redundant. Is it possible to purchase rx-only devices?</div>
<div><br>
</div>
<div>Best regards,</div>
<div>Temir</div>
<div><br>
</div>
<div><br>
</div>
</div>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">
usrp-users@lists.ettus.com</a></span><br>
<span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</blockquote>
<br>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">
usrp-users@lists.ettus.com</a></span><br>
<span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a></span><br>
</div>
</blockquote>
</blockquote>
<br>
</div>
</div>

</blockquote></div>

--0000000000002e942505d460a770--

--===============2388597742598396902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2388597742598396902==--
