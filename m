Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6411C70AB8C
	for <lists+usrp-users@lfdr.de>; Sun, 21 May 2023 00:14:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20E73383CE7
	for <lists+usrp-users@lfdr.de>; Sat, 20 May 2023 18:14:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684620848; bh=V8TBlvCZBK7TUlcG5CulZh5dl4klpCWL4CRCAxn0SOA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=puJH2DoH0w4zITovtxFTdZnaivrlszWj3OutJEcFS/Gm6hvRC4m/HTr0jHJl+EFT/
	 r6kfSW3Aq2uVHIEZU0CbdaBrL/Owg1NzekQ6A8rVenQfTtGoliFpktLtYze3iIIvrg
	 l9pg7KwXULpdt1QDP3en721nfD1jm91nDvZI/nTmzhbE3tre/eUBz4W4I/W2ECYyWj
	 znvqGnjPz35HNw+24TNg88J6YyI7PeyzILWTEUwaLtkR3zC+gMsB0S6VSukPzDpo3w
	 mQSgVC24lHiI/U9WrbG65WErWgXP3LQkXlXByL7QsChIwlgoHtDrkPk3ET+sItRMxQ
	 /QBP0bB3N1XzA==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id E8179380D9E
	for <usrp-users@lists.ettus.com>; Sat, 20 May 2023 18:13:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Wer1uTjT";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-62384e391e3so18334836d6.3
        for <usrp-users@lists.ettus.com>; Sat, 20 May 2023 15:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684620791; x=1687212791;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=waAiGrju9RzweuAv8/rro4V2nLhjwplXXiWW0YkdSk4=;
        b=Wer1uTjTqS1goGe1VLElyHhrLDqpquclHY9oxr039YBONEbBogy/nVTx+ph38XapMm
         1uKRuRm0fiBWXbMvSA7jBPIaTi/GB4QB/xfhMy8BlWuhj5NALUULV9jCp8J12HscFapp
         VNyXShK/waCY8ti0dN3hVicLvrcLRrUge+994qgcI2PH+hBIbBK6Lflqs1SbVSFgChWn
         /4rMazCkW81jtsIp7fOyaen2YJoJGg3cZSxyT/U71bB6WWNprFNrRBkp/i4Eqd6JKDOl
         6EibQbdyde7knVuc6U+tZV1yjH3xIep0S4rZTSJBQcNfTh1nNV4iIEXQiRsa9r7f5/o9
         McTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684620791; x=1687212791;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=waAiGrju9RzweuAv8/rro4V2nLhjwplXXiWW0YkdSk4=;
        b=X8iuubD3E4lHOkU78oNsPSgkbhVY8zunb39gzp8cp2uDdVlQ1YFot0q53D342JVpQG
         2s2qrCOwJzT77PUjz8R9KUD4YHFHhcE0eHk6FSUJvaG4aNb9LYrrqHpQjvuqyxjMF0sb
         Tifw5JVy4SjesCfsUEDpcQTWIVm3X2ACg6nmn4eIA6/Wrh0aK9qn2dGPngFBCzwCZtDU
         mYUPBpF7DXQ+77YpqAyrSlUccpTW+gKG73pOLVIzuBlsQ5/bqPQno4NVAf9A1RQY5xaq
         NqPEc70Ury+M9ni+jeXb7lwJkLQLOJJGaCq8mD5IjD1YdAXDQIOrYcheTDBhk85qclz3
         d6Sg==
X-Gm-Message-State: AC+VfDzYtz6EI1i3RpkT71yA1Cd6R0ICcFQ0rEbszPJV9KU/7ge4AAJs
	f4MRIYp3pXdClJAY8eVIe2bH9KA4wmhePg==
X-Google-Smtp-Source: ACHHUZ4SjRowKQLPbPEVpslhZE+8v3lZQboEF0z4prYOe6FPAEnUvkHCkIKzssGmAomgOR1h7Szltw==
X-Received: by 2002:a05:6214:d4b:b0:5ef:5456:783c with SMTP id 11-20020a0562140d4b00b005ef5456783cmr13167430qvr.40.1684620791123;
        Sat, 20 May 2023 15:13:11 -0700 (PDT)
Received: from [192.168.2.150] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id u7-20020a05622a010700b003f6a8379fa4sm310090qtw.70.2023.05.20.15.13.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 May 2023 15:13:10 -0700 (PDT)
Message-ID: <3a73567e-d3c6-83cc-b3ac-0004226581b0@gmail.com>
Date: Sat, 20 May 2023 18:13:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
 <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com>
 <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
 <936520968.215976.1684620209911@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <936520968.215976.1684620209911@mail.yahoo.com>
Message-ID-Hash: QNJ4ME7ZQ7VSY6WTGL5LC4OZYMVRI4VL
X-Message-ID-Hash: QNJ4ME7ZQ7VSY6WTGL5LC4OZYMVRI4VL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive with UHD4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QNJ4ME7ZQ7VSY6WTGL5LC4OZYMVRI4VL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2195484340414220726=="

This is a multi-part message in MIME format.
--===============2195484340414220726==
Content-Type: multipart/alternative;
 boundary="------------Mt225A7BOhELLt1Ti81n0HWd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Mt225A7BOhELLt1Ti81n0HWd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/05/2023 18:03, zhou via USRP-users wrote:
> Hi,
>
> I installed UHD 4.4 recently. I use USRP for both transmission and=20
> receive. I find that EVM in the tail part of the captured signal is=20
> higher, e.g., in a 20-slot capture, in the first 19 slots, EVM~=3D 1.2%=
,=20
> but in slot#20, evm ~=3D2.9%.
>
> UHD 3.10 was fine. I have found this problem in UHD 4.0 and UHD 4.1.=20
> Now it still exists in UHD 4.4. My solution is to capture 1ms more=20
> than what I need.
>
> Is this a bug in FPGA?
>
> Thanks,
> Hongwei
>
Without telling us what you mean by a "slot", and exactly how you're=20
capturing, it's impossible to say.=C2=A0=C2=A0 Remember, applications
 =C2=A0 of USRPs are *incredibly diverse*, so if you're using nomenclatur=
e=20
that is specific to your particular work, others may not
 =C2=A0 understand what it is you're doing.=C2=A0=C2=A0 Please be more sp=
ecific.

My guess is that you're doing a timed capture for an exact number of=20
samples, and that timing has become a bit more
 =C2=A0 "tight" in more recent releases, so you're capturing samples as t=
he=20
receiver is shutting down, or the transmitter is
 =C2=A0 shutting down.



--------------Mt225A7BOhELLt1Ti81n0HWd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/05/2023 18:03, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:936520968.215976.1684620209911@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp7a60654eyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I installed UHD 4.4 recent=
ly.
          I use USRP for both transmission and receive. I find that EVM
          in the tail part of the captured signal is higher, e.g., in a
          20-slot capture, in the first 19 slots, EVM~=3D 1.2%, but in
          slot#20, evm ~=3D2.9%.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">UHD 3.10 was fine. I have
          found this problem in UHD 4.0 and UHD 4.1. Now it still exists
          in UHD 4.4. My solution is to capture 1ms more than what I
          need.=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Is this a bug in FPGA?</di=
v>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <br>
      </div>
    </blockquote>
    Without telling us what you mean by a "slot", and exactly how you're
    capturing, it's impossible to say.=C2=A0=C2=A0 Remember, applications=
<br>
    =C2=A0 of USRPs are *incredibly diverse*, so if you're using nomencla=
ture
    that is specific to your particular work, others may not<br>
    =C2=A0 understand what it is you're doing.=C2=A0=C2=A0 Please be more=
 specific.<br>
    <br>
    My guess is that you're doing a timed capture for an exact number of
    samples, and that timing has become a bit more<br>
    =C2=A0 "tight" in more recent releases, so you're capturing samples a=
s
    the receiver is shutting down, or the transmitter is<br>
    =C2=A0 shutting down.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------Mt225A7BOhELLt1Ti81n0HWd--

--===============2195484340414220726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2195484340414220726==--
