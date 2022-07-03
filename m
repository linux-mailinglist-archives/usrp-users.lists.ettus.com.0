Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5671156488B
	for <lists+usrp-users@lfdr.de>; Sun,  3 Jul 2022 18:18:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC8F738425B
	for <lists+usrp-users@lfdr.de>; Sun,  3 Jul 2022 12:18:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656865096; bh=jj34XkkTYk6p97XBZS9P6Z9RH2dtqv3TR2TVPsDJXLo=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uRrsiF4sj6a1Kicbdbwg+0fdhAQTZPZwkUwuI65M0U+//4CStQhyB/6XULinTp1tJ
	 kYbrKzHnj7N/JN08LTFSmmJFue1WfQ24bOe0oiau/No2Zq7uU2JsHAglJMaUo4GVxz
	 Tf8SEnClGDlOYCmEwy52RgMNCbSq1rtoKqS8qpVvooUE9L0FbcnZUacCCZCA66lKeK
	 +gOBN8e6JHNR7DRfCL8RgYTDUe6E4FIwCpjxxFoW8vbS8Bmcb/OznESQZNr240uRqG
	 7L2hg7hC7P4BZInjgeQESwa1lZfeNTUZt66WKOn73AmTlhc9539qtpjPIlkGKjQ4oW
	 qOBTNJWiebWpw==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 0FF303840CD
	for <usrp-users@lists.ettus.com>; Sun,  3 Jul 2022 12:15:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ouTszZ4H";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id he28so6757584qtb.13
        for <usrp-users@lists.ettus.com>; Sun, 03 Jul 2022 09:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=8LP7VDuF0AXDJ5/3vW0fmNIQWs/vgNoqHZTNzps+W/0=;
        b=ouTszZ4HxJsxosWkfzhvoNg2Z85waiSQzJh1SyDPXwr+EPP7D8qiDNVWruhq+33thZ
         LOxfB+pZGTbwcokV/Bl/yvJ2umt5+XTy8fGXJ3qrM3kgwQccWFWzc7BPlWWqw2fBgjOZ
         kihP9VVmVDlzKyc7zpHOmjPZr5DqLjO2kZZTQlrILuGrdaPB1N7ZMG3ZSe4e4vgpcOiE
         UtOrVa5DYmj+HkTxZKcGYh+YE5xyEaZ2LPkrPW1LZb9bM+sR95DaVER0z6NI758akziL
         5YD91CyKHTUW87qnMnX1zZd3HH/bPAiGI0YMVqLshEbYZpyGaXcrEAcW241Go8NKQNTr
         XEPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=8LP7VDuF0AXDJ5/3vW0fmNIQWs/vgNoqHZTNzps+W/0=;
        b=cyrBkM4EDqXTLb02g0YaOUtrfwkNpZnZrh0SahHLFsd1B+n9/vA0CS2HnsU8Riopr4
         RRVR6A8rgBW+f7YmKtn3hfDS0YY0JhDSlFN4B4OvyrH3O2zE9o7t4EtPlNZjSX2r7zL3
         5BnimVkucPg5awWkPzQ0ZWpWjT2VouUIvhZKgV5no0oGvBvtkStRv1lx8QG5g7fREglC
         iE9KZS7Ud1rCp3AIwE7GydOduyFZCRzdvMA0bkYv89ViyUWSnl5juPj8AakbAI/2v1iO
         RWpe0Wvr6u22BBLi1xb2jUmzTlPIFrZJRfn9mFi4KCTq0eiRE9dRXdqDpynqNXFlTXyZ
         GCuA==
X-Gm-Message-State: AJIora+nYyaQyPfVkq9jK7RC1N/dQ+j3WpwjTmF3JAZKAS/EyWnjYv5N
	OpTZHRwwe0mk16NUAzMps6M=
X-Google-Smtp-Source: AGRyM1tis5VQT/uz/+Q4H7KvdIkWIDM7IseFBjZ89XHA/cFG/CKZJzQOVYXQ7jhtncjEnfpmQcmQ+A==
X-Received: by 2002:ac8:5e0b:0:b0:317:ac56:8385 with SMTP id h11-20020ac85e0b000000b00317ac568385mr20299973qtx.611.1656864956442;
        Sun, 03 Jul 2022 09:15:56 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id x5-20020a05620a448500b006a6d4261f40sm6457179qkp.111.2022.07.03.09.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 09:15:56 -0700 (PDT)
Message-ID: <a304c03d-1ee8-da48-2b17-c2b5784d1615@gmail.com>
Date: Sun, 3 Jul 2022 12:15:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: sp <stackprogramer@gmail.com>, Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2EpH5TqnpHd7hUUvchN_pSMnW=UU7=RJ_-a3jv+Jy59=Q@mail.gmail.com>
 <6E3D61AB-1674-4F9D-8952-5BF6479D0852@gmail.com>
 <CAAxXO2Gzu2DFt7mkMJjYZrNk4X8g+TK7j3ymzpeehDX=NSjm4Q@mail.gmail.com>
 <CAA=S3Pvgz1vcgV+HLNCAAL1ZL2LN-QF4qDtGxZNbd-Ojz_2szQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3Pvgz1vcgV+HLNCAAL1ZL2LN-QF4qDtGxZNbd-Ojz_2szQ@mail.gmail.com>
Message-ID-Hash: X2OIO6N3OON5R5VGEJF6BNPSMF3ZGBCB
X-Message-ID-Hash: X2OIO6N3OON5R5VGEJF6BNPSMF3ZGBCB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can convert a complex float 32 signal to complex int 16 signal for using in USRP??
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X2OIO6N3OON5R5VGEJF6BNPSMF3ZGBCB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6696955156682557871=="

This is a multi-part message in MIME format.
--===============6696955156682557871==
Content-Type: multipart/alternative;
 boundary="------------BKIBzeEyg0ppf05KPEj00ele"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BKIBzeEyg0ppf05KPEj00ele
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-03 11:29, sp wrote:
> Thanks! So I set scaler to an appropriate value that ceil is not=20
> effected=C2=A0my data. But in Gnuradio I can not find an easy convert s=
olution.
> So I do test and error to find a solution.
This isn't even a Gnu Radio or UHD problem, just a generic=20
programming/algorithms thing.=C2=A0 Not even DSP.

Let's say your complex-float file from a HackRF is NOT scaled into=20
{-1.0,+1.0}.=C2=A0=C2=A0 Then you simply look at the largest absolute val=
ue across
 =C2=A0 the whole file and divide all your values by that value. Then you=
've=20
preserved dynamic range without clipping, and it is then in the
 =C2=A0 "expected" domain of complex-floats in Gnu Radio (or UHD for that=
=20
matter).

We're talking about files here, so it's not like you have to=20
"understand" this is in real-time. You can do a one-time conversion
 =C2=A0of the not-scaled-to-{-1.0,+1.0} file into that range, and then it=
's=20
in the right range.

But my *guess* is that hackrf recording tools if they're using=20
complex-float will have the floating-point already scaled into=20
{-1.0,+1.0}, and in
 =C2=A0host-native IEEE-754 floating-point format.=C2=A0 I'd be mildly as=
tonished=20
if it were otherwise.


>
> On Sun, Jul 3, 2022 at 1:44 AM Nikos Balkanas <nbalkanas@gmail.com> wro=
te:
>
>     On Sat, Jul 2, 2022 at 6:54 PM Marcus D Leech
>     <patchvonbraun@gmail.com> wrote:
>     >
>     > The convention in the UHD and GnuRadio universe is that floats
>     are scaled into {-1.0,+1.0}.
>     >
>     > If you setup your streamer to use complex float CPU format and
>     sc16 wire format you just need to scale your complex floats
>     appropriately.
>
>     Just to elaborate on this a bit. If your data is large enough (>>1)
>     then +- 1 won't make any difference...
>     If it is (< 1) then it will be a big problem. Scale accordingly:)
>     You can use either ceil or floor. Same error:)
>
>     Nikos
>     >
>     > Sent from my iPhone
>     >
>     > > On Jul 2, 2022, at 10:22 AM, Nikos Balkanas
>     <nbalkanas@gmail.com> wrote:
>     > >
>     > > =EF=BB=BFHi,
>     > >
>     > > I don't know volk_32fc_convert_16 ic. Dunno if it converts
>     between big
>     > > and little indians:(
>     > > When converting a float to int, you always have to ceil or
>     floor the float.
>     > > Ceil sounds as good as any. You can easily change that to
>     floor if you
>     > > run into problems.
>     > > Since clibs le32to* take ints as arguments, I would first conve=
rt
>     > > float32 to int32 from gnuradio save to file, and then worry abo=
ut
>     > > the indians when importing to uhd...
>     > >
>     > > HTH
>     > > Nikos
>     > >
>     > >> On Fri, Jul 1, 2022 at 8:42 AM sp h
>     <stackprogramer@gmail.com> wrote:
>     > >>
>     > >> I recorded a complex signal file, I did it with HackRFONE,=C2=A0
>     For sending on USRP I want to use the int16 option as input, My
>     question is how can convert a complex float 32 signal to complex
>     int 16 for USRP?
>     > >> what's the relation between complex float 32 and complex int
>     32 in USRP?
>     > >> I know that in USRP numbers are in format complex int 16 and
>     big-endian and in Gnuradio numbers in format complex float 32 and
>     little-endian...
>     > >> https://files.ettus.com/manual/page_converters.html
>     > >> I used volk lib but the float that I entered as input, is
>     ceiled to bigger integers. Is this a method valid for converting
>     signals...?Or my data will be corrupt!!!
>     > >> Thanks in advance.
>     > >>
>     > >>
>     > >>>=C2=A0 =C2=A0 =C2=A0 =C2=A0lv_16sc_t* outputVector;
>     > >>>
>     > >>>=C2=A0 =C2=A0 =C2=A0 =C2=A0lv_32fc_t* inputVector;
>     > >>>
>     > >>>=C2=A0 =C2=A0 =C2=A0 =C2=A0inputVector->real(25.55);
>     > >>>
>     > >>>=C2=A0 =C2=A0 =C2=A0 =C2=A0inputVector->imag(45);
>     > >>>
>     > >>> =C2=A0volk_32fc_convert_16ic(outputVector,inputVector,32);
>     > >>>
>     > >>> =C2=A0qDebug()<<outputVector->real()<<"-----";
>     > >>
>     > >>
>     > >> The output:
>     > >>>
>     > >>> 26 -----
>     > >>
>     > >> _______________________________________________
>     > >> USRP-users mailing list -- usrp-users@lists.ettus.com
>     > >> To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>     > > _______________________________________________
>     > > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > > To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>

--------------BKIBzeEyg0ppf05KPEj00ele
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-03 11:29, sp wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3Pvgz1vcgV+HLNCAAL1ZL2LN-QF4qDtGxZNbd-Ojz_2szQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks! So I set scaler to an appropriate value
        that ceil is not effected=C2=A0my data. But in Gnuradio I can not
        find an easy convert solution.<br>
        <div>So I do test and error to find a solution.</div>
      </div>
    </blockquote>
    This isn't even a Gnu Radio or UHD problem, just a generic
    programming/algorithms thing.=C2=A0 Not even DSP.<br>
    <br>
    Let's say your complex-float file from a HackRF is NOT scaled into
    {-1.0,+1.0}.=C2=A0=C2=A0 Then you simply look at the largest absolute=
 value
    across<br>
    =C2=A0 the whole file and divide all your values by that value. Then
    you've preserved dynamic range without clipping, and it is then in
    the<br>
    =C2=A0 "expected" domain of complex-floats in Gnu Radio (or UHD for t=
hat
    matter).<br>
    <br>
    We're talking about files here, so it's not like you have to
    "understand" this is in real-time. You can do a one-time conversion<b=
r>
    =C2=A0of the not-scaled-to-{-1.0,+1.0} file into that range, and then
    it's in the right range.<br>
    <br>
    But my *guess* is that hackrf recording tools if they're using
    complex-float will have the floating-point already scaled into
    {-1.0,+1.0}, and in<br>
    =C2=A0host-native IEEE-754 floating-point format.=C2=A0 I'd be mildly
    astonished if it were otherwise.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3Pvgz1vcgV+HLNCAAL1ZL2LN-QF4qDtGxZNbd-Ojz_2szQ@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jul 3, 2022 at 1:44=
 AM
          Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">nbal=
kanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          Sat, Jul 2, 2022 at 6:54 PM Marcus D Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
          &gt;<br>
          &gt; The convention in the UHD and GnuRadio universe is that
          floats are scaled into {-1.0,+1.0}.<br>
          &gt;<br>
          &gt; If you setup your streamer to use complex float CPU
          format and sc16 wire format you just need to scale your
          complex floats appropriately.<br>
          <br>
          Just to elaborate on this a bit. If your data is large enough
          (&gt;&gt;1)<br>
          then +- 1 won't make any difference...<br>
          If it is (&lt; 1) then it will be a big problem. Scale
          accordingly:)<br>
          You can use either ceil or floor. Same error:)<br>
          <br>
          Nikos<br>
          &gt;<br>
          &gt; Sent from my iPhone<br>
          &gt;<br>
          &gt; &gt; On Jul 2, 2022, at 10:22 AM, Nikos Balkanas &lt;<a
            href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">nbal=
kanas@gmail.com</a>&gt;
          wrote:<br>
          &gt; &gt;<br>
          &gt; &gt; =EF=BB=BFHi,<br>
          &gt; &gt;<br>
          &gt; &gt; I don't know volk_32fc_convert_16 ic. Dunno if it
          converts between big<br>
          &gt; &gt; and little indians:(<br>
          &gt; &gt; When converting a float to int, you always have to
          ceil or floor the float.<br>
          &gt; &gt; Ceil sounds as good as any. You can easily change
          that to floor if you<br>
          &gt; &gt; run into problems.<br>
          &gt; &gt; Since clibs le32to* take ints as arguments, I would
          first convert<br>
          &gt; &gt; float32 to int32 from gnuradio save to file, and
          then worry about<br>
          &gt; &gt; the indians when importing to uhd...<br>
          &gt; &gt;<br>
          &gt; &gt; HTH<br>
          &gt; &gt; Nikos<br>
          &gt; &gt;<br>
          &gt; &gt;&gt; On Fri, Jul 1, 2022 at 8:42 AM sp h &lt;<a
            href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">stac=
kprogramer@gmail.com</a>&gt;
          wrote:<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; I recorded a complex signal file, I did it with
          HackRFONE,=C2=A0 For sending on USRP I want to use the int16 op=
tion
          as input, My question is how can convert a complex float 32
          signal to complex int 16 for USRP?<br>
          &gt; &gt;&gt; what's the relation between complex float 32 and
          complex int 32 in USRP?<br>
          &gt; &gt;&gt; I know that in USRP numbers are in format
          complex int 16 and big-endian and in Gnuradio numbers in
          format complex float 32 and little-endian...<br>
          &gt; &gt;&gt; <a
            href=3D"https://files.ettus.com/manual/page_converters.html"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://files.ettus.com/manua=
l/page_converters.html</a><br>
          &gt; &gt;&gt; I used volk lib but the float that I entered as
          input, is ceiled to bigger integers. Is this a method valid
          for converting signals...?Or my data will be corrupt!!!<br>
          &gt; &gt;&gt; Thanks in advance.<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lv_16sc_t* outputVe=
ctor;<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lv_32fc_t* inputVec=
tor;<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inputVector-&gt;rea=
l(25.55);<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inputVector-&gt;ima=
g(45);<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0
          =C2=A0volk_32fc_convert_16ic(outputVector,inputVector,32);<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0
          =C2=A0qDebug()&lt;&lt;outputVector-&gt;real()&lt;&lt;"-----";<b=
r>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; The output:<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; 26 -----<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; _______________________________________________<b=
r>
          &gt; &gt;&gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          &gt; &gt;&gt; To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
          &gt; &gt; _______________________________________________<br>
          &gt; &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          &gt; &gt; To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------BKIBzeEyg0ppf05KPEj00ele--

--===============6696955156682557871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6696955156682557871==--
