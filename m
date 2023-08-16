Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4394977EC65
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 23:59:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB321384AE1
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 17:59:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692223157; bh=2ey6dZWZLxTWt6OkXPedOt9UvrCmLfRLNKT2U+Q0dlc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cUwX/EI9D32d5nYspkXpl73xP0EP2fbMLGXiqUByNXFw5WkPkvd/FoVSR4RuRkzCM
	 xcvkesRYLF9WB4ayKlskNboRrAJ9JTfMMx/SL3Mo8VuSPZ8wT8ik74TCAI2DptaBLJ
	 vEB6vjsSG9PrS9P/JMOAHQ5sdC3n+RJFYNTP5NEyTs41RezOy/Z8pB0aXk+SUmyeg/
	 yxHJTuA0fGELRrwTNjoVZpJyHdxHSr4sIGW3Qdui5XNhHvX2Vu8Dw5mXrDp7/cQjm2
	 OhGKWB5le2J9lAVu+tbjc4t0HYBDSRZPnQ7tGx3F6aiWAURI2UlNsSJyhQJIX4IKhT
	 wZb0esJFx+BOg==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3150E383FFE
	for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 17:59:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UTMsh7aN";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6418e5a8b28so37733826d6.3
        for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 14:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692223143; x=1692827943;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sH7I6zj6HhussZacKpTgXTUFaj7wTke5iUkjOu4p01o=;
        b=UTMsh7aN9ZmBVCFMH5RqoPrKmmQ2awzLApTr5XxfcUw6DN5NlqiCU62+XB7U/GbUuc
         kS4wjH4CceyVRvouFsH1YkhDb09Z4ewwmLKaBmfGgCf3/9Vo9NM4l0LefaNpCxZMQLX/
         UtuEBfBcH3AITe79XacE7saaq+GlQa9VjJ4hncRsEv64spilfwaq3t1NKhJsMEpORmD5
         LIXaLOGQISwkReC/9c2QppnTnGh5Gx1p+0t+aDpjxLeF01HPfwVV8Y5w8bH1By5lEllu
         4F2PqNxM2Kdds6us2kGnOI6IAFn4GjJ9ZMiELqJVWpfUC1+Fc4JgpwSzEb1KMT98MEDY
         zz/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692223143; x=1692827943;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sH7I6zj6HhussZacKpTgXTUFaj7wTke5iUkjOu4p01o=;
        b=Q5Rgo0ZpHW+wu9nTXXMeSRoCMXsz3lSOM8BjkSyyCYJtAzG5TOYzoUwnSvOUui3cxG
         tAbWYYlLt8rtfBII12wTxqf2ZlRkkG1UBlwNdUtRTBu9m+jX7rqPlRg0tFDtzyHt1F9m
         syfvJ+QZ3qGKW3zgOv1JxdfpgYG1+a+9hrRGlHINDrk+fT50d0KdCWoSTQ67kukJnZxM
         05n+XNyLtMRoW6sZZ+lxkfBvpe+Q1Go5KqMT9/qy/fQ6+2S9rG9WB0wsXkTw0MMcqHFY
         wwm3/jcBPY1WidFfpaobO+JgZj8FVIU6SXpkk1UIOu+Ceo7eBHZ8Q4OXx+aZvqVuwO5C
         5H/A==
X-Gm-Message-State: AOJu0Yz8W9KheWinHv5IJHlGN8Rv1eidgIEOWg7IetKtLVebvnTYdnWu
	A42n5LD1+bQ27tRrx4+BXkue4qCEng0=
X-Google-Smtp-Source: AGHT+IECw2k+Ax0ZXMAr852h9DbyDgX4zTNPDPG7mGjGSmMMR5wT7DetrZQF+918lz1+jw9i5q54PA==
X-Received: by 2002:a0c:db12:0:b0:63f:7a94:8797 with SMTP id d18-20020a0cdb12000000b0063f7a948797mr3126328qvk.46.1692223143344;
        Wed, 16 Aug 2023 14:59:03 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id pa39-20020a05620a832700b0076d74da4481sm405073qkn.23.2023.08.16.14.59.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Aug 2023 14:59:02 -0700 (PDT)
Message-ID: <2d13deab-68c9-ff71-c1d3-d621741b444b@gmail.com>
Date: Wed, 16 Aug 2023 17:58:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFche=j2=5KpSdujE1hQdbVFhTcuSoOCbZqmPkCFrk+S_NAUGw@mail.gmail.com>
 <41A1610D-A552-4A4C-9ECD-5EE3B5E9DE6A@yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <41A1610D-A552-4A4C-9ECD-5EE3B5E9DE6A@yahoo.com>
Message-ID-Hash: WA4A345NOFQNLDQV4FUE22XXPR53B2SL
X-Message-ID-Hash: WA4A345NOFQNLDQV4FUE22XXPR53B2SL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WA4A345NOFQNLDQV4FUE22XXPR53B2SL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3684381422724444084=="

This is a multi-part message in MIME format.
--===============3684381422724444084==
Content-Type: multipart/alternative;
 boundary="------------aq270B5ZQmWHDIhYOLDbdnIs"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------aq270B5ZQmWHDIhYOLDbdnIs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/08/2023 17:26, Johnny Samuels via USRP-users wrote:
> I=E2=80=99m trying to remove myself from this mailing list. Sending=20
> unsubscribe to the given email does not remove me from the list. Any=20
> suggestions?
>
> Sent from my iPhone
>
You sent an "unsubscribe" to:

usrp-users-leave@lists.ettus.com


And it didn't work?


>> On Aug 16, 2023, at 5:17 PM, Wade Fife <wade.fife@ettus.com> wrote:
>>
>> =EF=BB=BF
>> You are correct about INGRESS_BUFF_SIZE. It's only used to buffer=20
>> data that the stream endpoint receives from another endpoint (e.g.,=20
>> data sent from the host computer to a stream endpoint). There's no=20
>> extra buffering in the sending stream endpoint. For normal RX where=20
>> we stream to a host computer, the computer's memory serves as the buff=
er.
>>
>> In your case, if you need extra buffering then I would expect that to=20
>> be added to your block. You can change the FIFO sizes in the NoC=20
>> shell to add buffering to your block, depending on the type of NoC=20
>> shell you're using.
>>
>> Changing the MTU on the FPGA isn't well tested, so I don't recommend=20
>> changing it.
>>
>> Is the overflow occurring in the radio? If that's the case, then you=20
>> probably need additional buffering on the input of your block where=20
>> data's received by the radio.
>>
>> Wade
>>
>>
>> On Wed, Aug 16, 2023 at 10:45=E2=80=AFAM <jmaloyan@umass.edu> wrote:
>>
>>     For my application, I am not collecting samples continuously. The
>>     radio block is commanded to stream continuously, but I have a
>>     custom block downstream which =E2=80=9Cgates=E2=80=9D samples in b=
ursts that pass
>>     through. I am able to at least stream data without any overflows
>>     as long as the number of samples the custom block allows is not
>>     too big, which is why I am assuming its a buffer that is too
>>     small. My assumption is as long as my buffers are large enough
>>     and the total number of samples of each burst is less than 10
>>     Gb/s, samples should be able to unload onto the QSFP before the
>>     next burst of samples. This is why I increased the endpoint
>>     buffer sizes.
>>
>>     However, looking over the verilog, it seems INGRESS_BUFF_SIZE
>>     only controls the buffer size of the input going into the
>>     block(before gating), and not the output(after gating), which is
>>     probably why I am still seeing overflows at the same exact rate
>>     even after increasing the buffer size. Is this interpretation
>>     correct, and if so, is it =E2=80=9Csafe=E2=80=9D to control MTU, o=
r will it cause
>>     other problems downstream?
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------aq270B5ZQmWHDIhYOLDbdnIs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/08/2023 17:26, Johnny Samuels vi=
a
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:41A1610D-A552-4A4C-9ECD-5EE3B5E9DE6A@yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      I=E2=80=99m trying to remove myself from this mailing list. Sending
      unsubscribe to the given email does not remove me from the list.
      Any suggestions?=C2=A0<br>
      <br>
      <div dir=3D"ltr">Sent from my iPhone</div>
      <div dir=3D"ltr"><br>
      </div>
    </blockquote>
    You sent an "unsubscribe" to:<br>
    <br>
    <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users-leave=
@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
    <br>
    <br>
    And it didn't work?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:41A1610D-A552-4A4C-9ECD-5EE3B5E9DE6A@yahoo.com">
      <div dir=3D"ltr">
        <blockquote type=3D"cite">On Aug 16, 2023, at 5:17 PM, Wade Fife
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:wade.fife@ett=
us.com">&lt;wade.fife@ettus.com&gt;</a> wrote:<br>
          <br>
        </blockquote>
      </div>
      <blockquote type=3D"cite">
        <div dir=3D"ltr">=EF=BB=BF
          <div dir=3D"ltr">
            <div>You are correct about INGRESS_BUFF_SIZE. It's only used
              to buffer data that the stream endpoint receives from
              another endpoint (e.g., data sent from the host computer
              to a stream endpoint).
              There's no extra buffering in the sending stream endpoint.
              For normal RX where we stream to a host computer, the
              computer's memory serves as the buffer.</div>
            <div><br>
            </div>
            <div>In your case, if you need extra buffering then I would
              expect that to be added to your block. You can change the
              FIFO sizes in the NoC shell to add buffering to your
              block, depending on the type of NoC shell you're using.<br>
            </div>
            <div><br>
            </div>
            <div>Changing the MTU on the FPGA isn't well tested, so I
              don't recommend changing it.<br>
            </div>
            <div><br>
            </div>
            <div>Is the overflow occurring in the radio? If that's the
              case, then you probably need additional buffering on the
              input of your block where data's received by the radio.<br>
            </div>
            <div><br>
            </div>
            <div>Wade<br>
            </div>
            <br>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 16, 2023 at
              10:45=E2=80=AFAM &lt;<a href=3D"mailto:jmaloyan@umass.edu"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
jmaloyan@umass.edu</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <p>For my application, I am not collecting samples
                continuously. The radio block is commanded to stream
                continuously, but I have a custom block downstream which
                =E2=80=9Cgates=E2=80=9D samples in bursts that pass throu=
gh. I am able
                to at least stream data without any overflows as long as
                the number of samples the custom block allows is not too
                big, which is why I am assuming its a buffer that is too
                small. My assumption is as long as my buffers are large
                enough and the total number of samples of each burst is
                less than 10 Gb/s, samples should be able to unload onto
                the QSFP before the next burst of samples. This is why I
                increased the endpoint buffer sizes.</p>
              <p>However, looking over the verilog, it seems
                INGRESS_BUFF_SIZE only controls the buffer size of the
                input going into the block(before gating), and not the
                output(after gating), which is probably why I am still
                seeing overflows at the same exact rate even after
                increasing the buffer size. Is this interpretation
                correct, and if so, is it =E2=80=9Csafe=E2=80=9D to contr=
ol MTU, or will
                it cause other problems downstream?</p>
              <p><br>
              </p>
              <p><br>
              </p>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
          <span>_______________________________________________</span><br=
>
          <span>USRP-users mailing list -- <a class=3D"moz-txt-link-abbre=
viated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a></span><br>
          <span>To unsubscribe send an email to
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a></span><br>
        </div>
      </blockquote>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------aq270B5ZQmWHDIhYOLDbdnIs--

--===============3684381422724444084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3684381422724444084==--
