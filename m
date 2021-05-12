Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC71C37B350
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 03:10:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D61903847B6
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 21:10:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W1gOfeVe";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 223EB3844D2
	for <USRP-users@lists.ettus.com>; Tue, 11 May 2021 21:09:16 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id 197so20732564qkl.12
        for <USRP-users@lists.ettus.com>; Tue, 11 May 2021 18:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=tJGcDTzofhXR589FxRFbj3+SHqFQEB+KAON+pz/1et8=;
        b=W1gOfeVeFpGWwqTV+EUI9ow8oIpELAV09uwWRkKKI2jFHAXIFqu3eLS82DZt42/PNA
         V/Fu+QgJdyxR3HFmUzCdHw+XMt43HaKHiiOr3jBtc3kTOWS3/jthCINd3KphNaLSJZhY
         kdJT8dmhyKtpSoNckeu6EgxqZ2imuBFmbx7J3kAr018xqAAfNHlGMo/uWJCEYlVm1oVQ
         zC04l5h0gpWPCsFV+XRF8wYJM/LMsNzYpmcnrbFi0+1zrTQ4kGfX7rGV4NwqcLerJVmV
         ia4GEV8YDmXSs/apjBPDSaJGjGO5Fv2be/67SGSOmV234gnSd7YWnBYmvdjV5f1Btf1S
         yEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=tJGcDTzofhXR589FxRFbj3+SHqFQEB+KAON+pz/1et8=;
        b=JSf8mpqrAP5uvI6Su6Z3JxA/RktzyVRoaYEvXwkoYfRf6UETSrKnFOixAe5zmEJ0hf
         CDdLFBShs5/1NZBvxWXXMZ9OJhI0tfVnA93QEFcKbngluK5SmBosPYuZRLzclHqdrofa
         1qad+WVOYmg+VaRW0YXkYaTIy2skqX63XIdXyoOKxyiwLpLFf0+anuGlCzb3hcgi3mn3
         sKMtscyoq1/OULXYgEON5g1ktiMcrm+JhHood5zdX3UQHBOPnI4zHOlSBqsUAqBtAs+M
         0oMlQ7V8XnHCv6slnMQ4sGAF5x7DlxNO8SKHA2stlv3+OTuysk3XDMhgyTdzyQvWjKGr
         B7tw==
X-Gm-Message-State: AOAM531pVzgida8tXYpyChof96bgM3kcSQixFVLzovMHloWmJTgwKmv6
	9xVvqn9YOlA1ZNSTrnWmXyLj0p8Bp8Cjkg==
X-Google-Smtp-Source: ABdhPJy6GpJ5V4yCSpa5r1wHOrrKSCRxhMdjhgHL1neAEvl4Hz9czHTo4Yq1IOxuvgl9Uv8e1lHmAA==
X-Received: by 2002:a37:c444:: with SMTP id h4mr27439220qkm.206.1620781755699;
        Tue, 11 May 2021 18:09:15 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id j13sm15399505qth.57.2021.05.11.18.09.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 18:09:15 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 11 May 2021 21:09:14 -0400
Message-Id: <46C6FA05-04E4-4ACB-B89B-2BCD880E05C2@gmail.com>
References: <379E7306-D0DF-4D3C-96C5-B422CCE29AE0@gmail.com>
In-Reply-To: <379E7306-D0DF-4D3C-96C5-B422CCE29AE0@gmail.com>
To: isaac mario tupac davila <isacctd92@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: O7X3EQMP43UA5QHPALKWKYSICJI7CN2J
X-Message-ID-Hash: O7X3EQMP43UA5QHPALKWKYSICJI7CN2J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling rate and bandwidth - Usrp N210 & source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O7X3EQMP43UA5QHPALKWKYSICJI7CN2J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6255303746170030560=="


--===============6255303746170030560==
Content-Type: multipart/alternative; boundary=Apple-Mail-37F063D1-DA5A-4234-8B79-F1263C56FB4D
Content-Transfer-Encoding: 7bit


--Apple-Mail-37F063D1-DA5A-4234-8B79-F1263C56FB4D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Also very few daughtercards on N210 actually support variable analog bandwid=
th anyway.=20

Sent from my iPhone

> On May 11, 2021, at 9:08 PM, Marcus D Leech <patchvonbraun@gmail.com> wrot=
e:
>=20
> =EF=BB=BF(1) because the general approach is to give about 80% effective b=
andwidth due to the fact that filters cannot have infinitely steep edges.=20=

>=20
> (2) complex baseband sampling. Sample rate =3D=3D bandwidth.=20
>=20
> Sent from my iPhone
>=20
>>> On May 11, 2021, at 6:15 PM, isaac mario tupac davila <isacctd92@gmail.c=
om> wrote:
>>>=20
>> =EF=BB=BF
>> Hello community
>>=20
>> I'm Isaac. I'm dealing with some questions about the interpretation of sa=
mpling rate and bandwidth in a USRP source block.
>>=20
>> What I understand is if I work with an USRP N210, my ADC works with a 100=
MS/s. If I use a Gigabit Ethernet and a data type of 16bits, I could receive=
 in my host up to 25MS/s with a bandwidth of 20MHz. https://kb.ettus.com/Abo=
ut_USRP_Bandwidths_and_Sampling_Rates
>>=20
>> My questions are:=20
>>=20
>> 1. If I can receive up to 25MS/s on my host, why my bandwidth is 20MHz? I=
 think It is up to 12.5MHz according to Nyquist.
>>=20
>> 2. Why is the sample rate value in the usrp source block equal to the ban=
dwidth I observe? I think this bandwidth should be the half according to Nyq=
uist too. https://wiki.gnuradio.org/index.php/USRP_Source
>>=20
>> I appreciate any help to clarify this concepts=20
>>=20
>> Regards
>> Isaac T.
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-37F063D1-DA5A-4234-8B79-F1263C56FB4D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Also very few daughtercards on N210 actuall=
y support variable analog bandwidth anyway.&nbsp;<br><br><div dir=3D"ltr">Se=
nt from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May=
 11, 2021, at 9:08 PM, Marcus D Leech &lt;patchvonbraun@gmail.com&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">=
(1) because the general approach is to give about 80% effective bandwidth du=
e to the fact that filters cannot have infinitely steep edges.&nbsp;<div><br=
></div><div>(2) complex baseband sampling. Sample rate =3D=3D bandwidth.&nbs=
p;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bl=
ockquote type=3D"cite">On May 11, 2021, at 6:15 PM, isaac mario tupac davila=
 &lt;isacctd92@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hello community<=
br></div><div><br></div><div>I'm Isaac. I'm dealing with some questions abou=
t the interpretation of sampling rate and bandwidth in a USRP source block.<=
/div><div><br></div><div>What I understand is if I work with an USRP N210, m=
y ADC works with a 100MS/s. If I use a Gigabit Ethernet and a data type of 1=
6bits, I could receive in my host up to 25MS/s with a bandwidth of 20MHz. <a=
 href=3D"https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates">http=
s://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates</a></div><div><br>=
</div><div>My questions are: <br></div><div><br></div><div>1. If I can recei=
ve up to 25MS/s on my host, why my bandwidth is 20MHz? I think It is up to 1=
2.5MHz according to Nyquist.</div><div><br></div><div>2. Why is the  sample r=
ate value in the usrp source block equal to the bandwidth I observe? I think=
 this bandwidth should be the half according to Nyquist too. <a href=3D"http=
s://wiki.gnuradio.org/index.php/USRP_Source">https://wiki.gnuradio.org/index=
.php/USRP_Source</a></div><div><br></div><div>I appreciate any help to clari=
fy this concepts&nbsp;<br></div><div><br></div><div>Regards</div><div>Isaac T=
.<br></div><div><br></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></blockquote></body></html>=

--Apple-Mail-37F063D1-DA5A-4234-8B79-F1263C56FB4D--

--===============6255303746170030560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6255303746170030560==--
