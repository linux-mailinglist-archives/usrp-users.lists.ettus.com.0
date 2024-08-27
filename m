Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D451960398
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 09:48:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E017E3853A4
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 03:47:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724744879; bh=X7P4aNEP3u5W7NysFXYQrycFqbn5AxsYeXZJYysphkw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yPilqEgXI5p40UZUhFgPu2mYbGKVg5YqTzXOXV8tfHdFhj4GSpsyaekRYDGfOKB3k
	 BDDgzUvvgKnvXdKZ/Ycv+xdW1stE0NJkC7yVwHZljyJyI6Lap2gX008qnHBBCVX6k4
	 qI7CzqntX1MjFkB7CgfdB/U6+dEubZ2H1ijz793CW8uVc/XqorefNst5qGNyLle2VY
	 jDPsk2AHwAaau4ZkJfE+dzC5i6DEoz+dDazySuqpLu+jrnmNO6/JpA5RNT0Pq+v++7
	 E/lzAvKNlCGBYoP6091umA0WqcQpeYb6XiVl36N1sVnyYZEO94T4eSXYqPJj8co+IO
	 CBfqD3tHvplJQ==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 47C94384DEC
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 03:47:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="UAoU3FJC";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a7aa086b077so458281666b.0
        for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 00:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1724744839; x=1725349639; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/9YHyprqojidbzAYgYCBzp1+xD9kPuYKbqjtyx7hG7s=;
        b=UAoU3FJCSNZnUb+tyhs3xLU4fJv9N6T2DheKLBORUKBbrL0CN+RkJSWxHiqhJgOk/u
         BXDTarcANRSFdYr17dbAZpK5iwoBtfWsAKTIYPmiWWCusi43CUH9hntvoO9CyEZsl/F6
         CxehLoORMXIAJ1zxJxhgfN3Q0BbgegvrLcI75al9WEEDyRGBdymdn3igdOoq7RI7yQ+n
         U0Zt68/kGgfZIe6Qns4fYYOy/KvL5PrG6fSDpXR33jt7iDJhg/xEjdTzih7iS0pwR5Jv
         R9jao7Rv0+huw0VNVVYafvIJCv7PvGmQ3gj07ydysU45WkmM3tAt4i13TZLzJDp8wVdg
         FX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724744839; x=1725349639;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/9YHyprqojidbzAYgYCBzp1+xD9kPuYKbqjtyx7hG7s=;
        b=p51UHOmFH/UD5yMxNTUm77lnz9+woDlcfz5paiL5HHAiFuTdnlgyucv4mCxPNyDiUJ
         kKjiSx0iNl5CIyHC9o9s9+oWO1pkpuhf0bLFPBxIku9trsqJFWDezcmwQed+cBDdmOzW
         vdb1cQQJm34HkCZsrabQqkxv85zH9qkueWp4Nw9PmVXG4RrRbRRSTLkkuEGvFAqdUqSN
         OoZIfJMi4oDA/p3I+sm5VDpS3XntqvPPASvUWfYbVl3dbjSWZeKjzycAv5LkH//QktK0
         m0ghqa+lOgSpq4qVN0gZEMrZLj/RdT//Ww3hudFHnmXx+FB2kXCI/17Ws0jbM6ezBGl0
         mcGw==
X-Gm-Message-State: AOJu0YxVQQtdcLlC/djJcEJNKDjvcEcSOUo1OMWXPHK4miSlOy0QeWU7
	tphXB8C297fOTGD9ofJLaM1NL07Zb2NfeDvD8grXjeQGILOexFCBodQDWa6Z8MnhoMRBiZ0HnY8
	xMqGOCRzsAM0Ll2e9Eu+uMJHhDpR0Z+sZMEF5es4ax41I0jaygmXnYA==
X-Google-Smtp-Source: AGHT+IEcvQPg12UprxaQrZtRKq/aNI3IdCpa8mcMTXtcI9ygKMbdVeySx6cy74CN+QZqZU16Vaz+VSwr+bQn1WWYYs0=
X-Received: by 2002:a17:907:efcb:b0:a86:7adb:b327 with SMTP id
 a640c23a62f3a-a86a530135dmr879336366b.40.1724744838991; Tue, 27 Aug 2024
 00:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
 <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com> <CAB__hTTO=N08nac2wwg9H4X6X1KWufAr+8jm5xXjd0QXnsiLow@mail.gmail.com>
 <ZzKYZGhnR2PvIUOunRGDW3GffGey_JjDV2v-c_tCLY9R66l3Yt-R4dt-wV9uzw5PYEbIEYAPGndZjkFQCRw_cRP-j8MUC7jxZ7-2ak2MNto=@protonmail.com>
In-Reply-To: <ZzKYZGhnR2PvIUOunRGDW3GffGey_JjDV2v-c_tCLY9R66l3Yt-R4dt-wV9uzw5PYEbIEYAPGndZjkFQCRw_cRP-j8MUC7jxZ7-2ak2MNto=@protonmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 27 Aug 2024 09:47:08 +0200
Message-ID: <CAFOi1A5TNE5M4xWD9dRCpNoj2RV08Soxpkphp7Lyrp7azq5P-Q@mail.gmail.com>
To: Olo <olo1618@protonmail.com>
Message-ID-Hash: 6US65UVQPWQMGBRWDIVULDAX4O4VRMXR
X-Message-ID-Hash: 6US65UVQPWQMGBRWDIVULDAX4O4VRMXR
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6US65UVQPWQMGBRWDIVULDAX4O4VRMXR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2788662400075766908=="

--===============2788662400075766908==
Content-Type: multipart/alternative; boundary="00000000000074f1c20620a573c6"

--00000000000074f1c20620a573c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 26, 2024 at 7:14=E2=80=AFPM Olo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thank you for your detailed responses to my previous questions. I
> appreciate the information provided about the limitations and potential
> issues related to FFT size and TwinRX configuration.
>
> However, I noticed that there was no feedback regarding the YAML file I
> attached in my original email. Could you please review it and let me know
> if the configuration I've set up is correct?
>

I didn't build and test it, but if it manages to squeeze in all the IP, I
see no general issues.

Note that after the split block, you need to collect all the data from both
outputs, meaning you need a full streaming setup. Make sure the total data
doesn't exceed your link capabilities (i.e., that you are not
oversubscribing your 10 GbE connection, and that your receiving computer is
fast enough).


> Additionally, based on your recommendations, I plan to use a window
> function (Window block) with a size of 1024, along with an FFT block of t=
he
> same size for the scanner (sweep spectrum) functionality. Would this
> approach be correct given the current limitations and your suggestions?
>

Same answer: If it fits, you're good.

--M

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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000074f1c20620a573c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 26, 2024 at 7:14=E2=80=AF=
PM Olo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-size=
:14px">Thank you for your detailed responses to my previous questions. I ap=
preciate the information provided about the limitations and potential issue=
s related to FFT size and TwinRX configuration.</div><div style=3D"font-fam=
ily:Arial,sans-serif;font-size:14px"><br></div><div style=3D"font-family:Ar=
ial,sans-serif;font-size:14px">However, I noticed that there was no feedbac=
k regarding the YAML file I attached in my original email. Could you please=
 review it and let me know if the configuration I&#39;ve set up is correct?=
</div></blockquote><div><br></div><div>I didn&#39;t build and test it, but =
if it manages to squeeze in all the IP, I see no general issues.</div><div>=
<br></div><div>Note that after the split block, you need to collect all the=
 data from both outputs, meaning you need a full streaming setup. Make sure=
 the total data doesn&#39;t exceed your link capabilities (i.e., that you a=
re not oversubscribing your 10 GbE connection, and that your receiving comp=
uter is fast enough).</div><div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-size:14px"=
><br></div>
<div style=3D"font-family:Arial,sans-serif;font-size:14px">Additionally, ba=
sed on your recommendations, I plan to use a window function (Window block)=
 with a size of 1024, along with an FFT block of the same size for the scan=
ner (sweep spectrum) functionality. Would this approach be correct given th=
e current limitations and your suggestions?</div></blockquote><div><br></di=
v><div>Same answer: If  it fits, you&#39;re good.</div><div><br></div><div>=
--M <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=
=3D"font-family:Arial,sans-serif;font-size:14px"><br></div><div style=3D"fo=
nt-family:Arial,sans-serif;font-size:14px">Your confirmation on these point=
s would be invaluable to ensure that I am on the right track with my projec=
t.</div><div style=3D"font-family:Arial,sans-serif;font-size:14px"><br></di=
v><div style=3D"font-family:Arial,sans-serif;font-size:14px">Thank you once=
 again for your time and assistance. I look forward to your response.</div>=
<div style=3D"font-family:Arial,sans-serif;font-size:14px"><br></div><div s=
tyle=3D"font-family:Arial,sans-serif;font-size:14px">Best regards,</div><di=
v style=3D"font-family:Arial,sans-serif;font-size:14px">Olo.</div><div>
        On Monday, August 26th, 2024 at 18:04, Rob Kossler via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br>
        <blockquote type=3D"cite">
            <div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"g=
mail_quote"><div class=3D"gmail_attr" dir=3D"ltr">On Mon, Aug 26, 2024 at 1=
0:24=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om" rel=3D"noreferrer nofollow noopener" target=3D"_blank">patchvonbraun@gm=
ail.com</a>&gt; wrote:<br></div><blockquote style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_=
quote">




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
<a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__=
control.html" rel=3D"noreferrer nofollow noopener" target=3D"_blank">https:=
//files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__control.html</a><=
br>  <br></div></blockquote><div>The <a href=3D"https://github.com/EttusRes=
earch/uhd/blob/master/fpga/usrp3/lib/ip/axi_fft/axi_fft.xci" rel=3D"norefer=
rer nofollow noopener" target=3D"_blank">xci file</a> still shows a transfo=
rm length of 1024. Also, I think that the X300 MTU size is 10 which implies=
 2^10=3D1024 x 64bit is the max payload.  This implies 2048 32-bit words in=
 the payload.  But, because of a few bytes of header, it is not possible to=
 use an FFT of length 2048 unless the FFT length is divorced from the packe=
t length.</div><div>Rob<br></div><br></div></div>

        </blockquote><br>
    </div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000074f1c20620a573c6--

--===============2788662400075766908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2788662400075766908==--
