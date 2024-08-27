Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C6996038A
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 09:45:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AA7D3852ED
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 03:45:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724744756; bh=xNuGp/UJkZyqHitNJpv668mm7KySLv2rQcY8HuximNs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HzuVUE+9EQwvvWGcwQfJTFMzoivYNlFoZyJneEtj8oqATJ5/LeuNTOsk9LcKEPOKi
	 HqkIT2qx1MnkgpkxRDtOe1UrNu64e10yy0m6E0Z78PkvOUaoSpqqIhbd2DjAR8rt1o
	 uMCp7Al381GuOsA63DtMsrdu2xQL4TO090LssTPloYHJd+eLQ17WyxERK/0sXpFzet
	 aPkQCiV6D7UZGkQRURWVXKEx99J+HUk/Ii7v9RDZVymUwZZVo7SxoxbGcPBbyQmNOm
	 Qs2Z7LJQAibjVglJrq80SIKHOFP7dT6IOXij4aJ0T07lIkZVwfvaByINZyxBXlHeGd
	 CQsBpAATAoiVA==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id DF657384DEC
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 03:45:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="K3RkGk1h";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a80eab3945eso524670666b.1
        for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 00:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1724744715; x=1725349515; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/0YEWL9xIjmUBUKAhbI8MIw0RnKhvopAcMe/5bI4Brg=;
        b=K3RkGk1hzUziCZM2XykDz6y6LziC9ZGpyJZtIJK6j3TsKeeg4h+uobkfqiOOIcHl8i
         hJeoJ58BT1TeQvfaJA5QWVE+AdmBi2vW8IKPcTqI11xDomS50J+GZE6bF/PxS20L1P9h
         yKBIiS8qeNk/5nJJ5LB6Tnm3IBRZ2X6zgJa/q/TkwAbR6NW5pQdj+he9ybeS7+NVr8pJ
         ea+0vom4jVGE1VQPWy746r7K9jxg2nfDu5tn19xkx23iNVLDadfDPPYY9/ZNMQLrHAsx
         ngD9IKueyGNfQVebxouQg/r5Zvgoi7XRGqa61D/xfUq7eeGUJHH96L2/59L+fDdP4DP3
         CkXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724744715; x=1725349515;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/0YEWL9xIjmUBUKAhbI8MIw0RnKhvopAcMe/5bI4Brg=;
        b=vDLhE1tyFrgyRdCq3UST4uuDOCnH2ZQF7q/0409+sOxWV/z4som8cYZ+mUWK7wX6B9
         yZrINnpmbHbBo+YEz75Yhy0z0Ltw5tlJxcBw8OBj/EjTc2rdIdIZ2E9GbepbnZFs402q
         Ya4kpoEFMIgLqda9+Bqm3iI/0+GbGHtsbVrNKfEaTEq5l0Q7bK+sUBHO0/Rfcf/i13TU
         IW8v8iLHv+E/fnkjQ+gCr3GEtsefRJm20DLbCfkrHRS+KLbgU08M7ZIucKy/d+v6ZGnS
         8f0fAl8bMl3+UYDyWVbnWYlNr9mq6cHeCmoaahcnn8qeM3XcmLN03JhzQKv/DYVA8WZz
         jv1A==
X-Gm-Message-State: AOJu0Yzluv0T+00u9Wk2RLnX6j4luvB0aEp0owV8oZLAsdU3LHr+GUUe
	QevoaisUtlWhPxBrvXqwsoUyMCS3h9cH2G+DR4BRgMu7dhwAhPYzVKu0P1IZp7P0M8TIs9rqhwq
	LqikKWWffOH2pPRsSRykyzMJ4OsP/B7jXQEvCto2A
X-Google-Smtp-Source: AGHT+IFV3t7ybVke0N3A7zto/Gd9hVxNQYnxutJx2fBST86HN2cnbDuV9mkyQGy9S9wWyYgzDt43FgDqZ60pzmyqFdE=
X-Received: by 2002:a17:907:ea0:b0:a7a:aa35:408d with SMTP id
 a640c23a62f3a-a86e39f9117mr158114766b.20.1724744714488; Tue, 27 Aug 2024
 00:45:14 -0700 (PDT)
MIME-Version: 1.0
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
 <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com> <CAB__hTTO=N08nac2wwg9H4X6X1KWufAr+8jm5xXjd0QXnsiLow@mail.gmail.com>
 <ZzKYZGhnR2PvIUOunRGDW3GffGey_JjDV2v-c_tCLY9R66l3Yt-R4dt-wV9uzw5PYEbIEYAPGndZjkFQCRw_cRP-j8MUC7jxZ7-2ak2MNto=@protonmail.com>
 <a1qmoBKs9eLCKKwZtGf-ci8CsH-LGueBoujZqhPdx_7HoL6tnTRvZjmJH2rdE-s4sJ4o2syphskB0krjHU-0VMeZ48YW4RlUTRNoZyAfl_Y=@protonmail.com>
In-Reply-To: <a1qmoBKs9eLCKKwZtGf-ci8CsH-LGueBoujZqhPdx_7HoL6tnTRvZjmJH2rdE-s4sJ4o2syphskB0krjHU-0VMeZ48YW4RlUTRNoZyAfl_Y=@protonmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 27 Aug 2024 09:45:03 +0200
Message-ID: <CAFOi1A60ZQuotHVZ59Em8hLsT+kzmSLE_hRp-a8_yUpE2kkd6g@mail.gmail.com>
To: Olo <olo1618@protonmail.com>
Message-ID-Hash: 25Z4EU3FSHD6TMQUF7FANIDCEKLXHJ6I
X-Message-ID-Hash: 25Z4EU3FSHD6TMQUF7FANIDCEKLXHJ6I
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/25Z4EU3FSHD6TMQUF7FANIDCEKLXHJ6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0879888591061787481=="

--===============0879888591061787481==
Content-Type: multipart/alternative; boundary="0000000000000925e30620a56ce0"

--0000000000000925e30620a56ce0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you had a polyphase channelizer on the FPGA, that would be an efficient
solution to your problem, but there's no such block as part of UHD itself.
There have been channelizer blocks written in the wild, but that would be
something you'd have to figure out.

--M

On Tue, Aug 27, 2024 at 7:17=E2=80=AFAM Olo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have an additional question related to my current project involving
> RFNoC. Specifically, I need to implement as many narrowband channels (DDC=
)
> as possible to record various parts of the spectrum as required.
>
> I=E2=80=99m wondering if it would be more efficient to handle this throug=
h RFNoC
> or directly on a GPU? Additionally, how many narrowband channels of
> specific bandwidths could I implement using RFNoC, considering I primaril=
y
> intend to store (record) the data into memory? I have a clear understandi=
ng
> of the memory and network interface requirements, but I am uncertain abou=
t
> the implications for CPU usage and RAM.
>
> Could you provide some guidance on this aspect?
> Olo.
>
> On Monday, August 26th, 2024 at 7:13 PM, Olo via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Thank you for your detailed responses to my previous questions. I
> appreciate the information provided about the limitations and potential
> issues related to FFT size and TwinRX configuration.
>
> However, I noticed that there was no feedback regarding the YAML file I
> attached in my original email. Could you please review it and let me know
> if the configuration I've set up is correct?
>
> Additionally, based on your recommendations, I plan to use a window
> function (Window block) with a size of 1024, along with an FFT block of t=
he
> same size for the scanner (sweep spectrum) functionality. Would this
> approach be correct given the current limitations and your suggestions?
>
> Your confirmation on these points would be invaluable to ensure that I am
> on the right track with my project.
>
> Thank you once again for your time and assistance. I look forward to your
> response.
>
> Best regards,
> Olo.
> On Monday, August 26th, 2024 at 18:04, Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>
>
> On Mon, Aug 26, 2024 at 10:24=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
> wrote:
>
>> On 26/08/2024 10:21, Rob Kossler via USRP-users wrote:
>>
>> Hi Olo,
>> On one point regarding an FFT length of 8192, there is likely an issue
>> with using the Ettus FFT block. In the past (I haven't checked recently)=
,
>> this block was limited to a maximum FFT size of 1024 because the entire =
FFT
>> had to fit in one packet where the maximum packet payload was about 2000
>> samples. It is possible to use larger FFTs, but this requires some custo=
m
>> code that divorces the FFT size from the packet size.
>> Rob
>>
>> My understanding is that in recent RFNoC, the limit has been raised to
>> 2048:
>>
>>
>> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__control.=
html
>>
>> The xci file
> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/ip/axi_f=
ft/axi_fft.xci>
> still shows a transform length of 1024. Also, I think that the X300 MTU
> size is 10 which implies 2^10=3D1024 x 64bit is the max payload. This imp=
lies
> 2048 32-bit words in the payload. But, because of a few bytes of header, =
it
> is not possible to use an FFT of length 2048 unless the FFT length is
> divorced from the packet length.
> Rob
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000925e30620a56ce0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you had a polyphase channelizer on the FPGA, that =
would be an efficient solution to your problem, but there&#39;s no such blo=
ck as part of UHD itself. There have been channelizer blocks written in the=
 wild, but that would be something you&#39;d have to figure out.</div><div>=
<br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2024 at 7:17=E2=80=AFAM Olo v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>I have an additional question related to my current proje=
ct involving RFNoC. Specifically, I need to implement as many narrowband ch=
annels (DDC) as possible to record various parts of the spectrum as require=
d.</p><p>I=E2=80=99m wondering if it would be more efficient to handle this=
 through RFNoC or directly on a GPU? Additionally, how many narrowband chan=
nels of specific bandwidths could I implement using RFNoC, considering I pr=
imarily intend to store (record) the data into memory? I have a clear under=
standing of the memory and network interface requirements, but I am uncerta=
in about the implications for CPU usage and RAM.</p><p>Could you provide so=
me guidance on this aspect?</p><div style=3D"font-family:Arial,sans-serif;f=
ont-size:14px;color:rgb(0,0,0);background-color:rgb(255,255,255)">Olo.<br><=
/div><div style=3D"font-family:Arial,sans-serif;font-size:14px"><br></div><=
div>
        On Monday, August 26th, 2024 at 7:13 PM, Olo via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br>
        <blockquote type=3D"cite">
            <div style=3D"font-family:Arial,sans-serif;font-size:14px">Than=
k you for your detailed responses to my previous questions. I appreciate th=
e information provided about the limitations and potential issues related t=
o FFT size and TwinRX configuration.</div><div style=3D"font-family:Arial,s=
ans-serif;font-size:14px"><br></div><div style=3D"font-family:Arial,sans-se=
rif;font-size:14px">However, I noticed that there was no feedback regarding=
 the YAML file I attached in my original email. Could you please review it =
and let me know if the configuration I&#39;ve set up is correct?</div><div =
style=3D"font-family:Arial,sans-serif;font-size:14px"><br></div>
<div style=3D"font-family:Arial,sans-serif;font-size:14px">Additionally, ba=
sed on your recommendations, I plan to use a window function (Window block)=
 with a size of 1024, along with an FFT block of the same size for the scan=
ner (sweep spectrum) functionality. Would this approach be correct given th=
e current limitations and your suggestions?</div><div style=3D"font-family:=
Arial,sans-serif;font-size:14px"><br></div><div style=3D"font-family:Arial,=
sans-serif;font-size:14px">Your confirmation on these points would be inval=
uable to ensure that I am on the right track with my project.</div><div sty=
le=3D"font-family:Arial,sans-serif;font-size:14px"><br></div><div style=3D"=
font-family:Arial,sans-serif;font-size:14px">Thank you once again for your =
time and assistance. I look forward to your response.</div><div style=3D"fo=
nt-family:Arial,sans-serif;font-size:14px"><br></div><div style=3D"font-fam=
ily:Arial,sans-serif;font-size:14px">Best regards,</div><div style=3D"font-=
family:Arial,sans-serif;font-size:14px">Olo.</div><div>
        On Monday, August 26th, 2024 at 18:04, Rob Kossler via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br>
        <blockquote type=3D"cite">
            <div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 26, 2024 at 1=
0:24=E2=80=AFAM Marcus D. Leech &lt;<a rel=3D"noreferrer nofollow noopener"=
 href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">




  <div>
    <div>On 26/08/2024 10:21, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">

      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>Hi Olo,</div>
          <div>On one point regarding an FFT length of 8192, there is
            likely an issue with using the Ettus FFT block. In the past
            (I haven&#39;t checked recently), this block was limited to a
            maximum FFT size of 1024 because the entire FFT had to fit
            in one packet where the maximum packet payload was about
            2000 samples.  It is possible to use larger FFTs, but this
            requires some custom code that divorces the FFT size from
            the packet size.</div>
          <div>Rob<br>
          </div>
        </div>
      </div>
    </blockquote>
    My understanding is that in recent RFNoC, the limit has been raised
    to 2048:<br>
    <br>
<a rel=3D"noreferrer nofollow noopener" href=3D"https://files.ettus.com/man=
ual/classuhd_1_1rfnoc_1_1fft__block__control.html" target=3D"_blank">https:=
//files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__control.html</a><=
br>  <br></div></blockquote><div>The <a rel=3D"noreferrer nofollow noopener=
" href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/i=
p/axi_fft/axi_fft.xci" target=3D"_blank">xci file</a> still shows a transfo=
rm length of 1024. Also, I think that the X300 MTU size is 10 which implies=
 2^10=3D1024 x 64bit is the max payload.  This implies 2048 32-bit words in=
 the payload.  But, because of a few bytes of header, it is not possible to=
 use an FFT of length 2048 unless the FFT length is divorced from the packe=
t length.</div><div>Rob<br></div><br></div></div>

        </blockquote><br>
    </div>
        </blockquote><br>
    </div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000925e30620a56ce0--

--===============0879888591061787481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0879888591061787481==--
