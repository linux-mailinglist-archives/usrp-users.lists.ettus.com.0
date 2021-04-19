Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C75B336454D
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 15:53:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18F3338401C
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 09:53:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="tOVcJwoY";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 294C3383FB2
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 09:52:42 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id s5so26999106qkj.5
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 06:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=w4QvnB+RkYb4RrhwRCeG4Mw6Efrz/TcgcunRFSG2Hns=;
        b=tOVcJwoY3pVAbs7kqDx7h3HC1rFJIXb3a7je6SPhbPTZkL6cqIrFP1VSqPLVXIvqsc
         UsrqZPZu6dWSzA0U086lnTnrl3CEihtbtltDnNWeGxotNrMOZ0dES4LMMQSXzWRSv99R
         JAbszfuknhyTggnVLHg2ZZ4zB8QtVO32ykxV3DJYx0+69Ui80GAo+6yqS8zIjfobWcQA
         DwtZ1MVuCAdhUxu4fKmDT5g7Dvie2+ylfd2hm9PURnIC2GlQtW+PxM6kUflxQEQ9/v7l
         mppHyLD0eDCWddCY6k6jfEkUYOo/kykFRyWyRI5YMvWa5WY7vrbX1zzhx4SLcAzSuRyN
         XrbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=w4QvnB+RkYb4RrhwRCeG4Mw6Efrz/TcgcunRFSG2Hns=;
        b=PpoqQ/aiNmWPPxPvV8vHf8egG7RH9Z1DHSF3Qu3BFupTHDm6xnCJfnOj0whxNTej3V
         3avXI+piyDsoQEaR6//3v3zOouptt1alcpYN/2hIijxAun3kIScHJ7lVrRUr+gxy6Mlb
         G39Vd0s4vo+oL3em1gK38qQ1DdM/h+vQoqWp/JskopKHskszFC46VR3/wVXtIL1MWfD5
         nrRDHd9USlkLR3jU6dQNP1gtCpuoXmcgueL3CqDODY0u78tbDLM2TSfHxcIgG3RnnrsT
         ydk0BJCrL8bPX5jsqXruHBqfFcQ/fw02T379na76tOuCT7EbWKoyH6rMG2LuFASxNGSU
         nKfQ==
X-Gm-Message-State: AOAM531eMNez9CpqlQKRQEsxhXzbaKZioJIrhQyvHDxcPd7592c60ReV
	E/a8LeqMaH45KNr31fvZKIQUfIxQG7RZXQ==
X-Google-Smtp-Source: ABdhPJzylZ479vs78aVVocbrVA4/Xxu4PnYYDtkHmsjxMqaVNAJqq5NIK9mlNgyr2YdeaLO/bPjt5g==
X-Received: by 2002:a37:6f41:: with SMTP id k62mr12250681qkc.262.1618840361507;
        Mon, 19 Apr 2021 06:52:41 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id h7sm8388067qka.39.2021.04.19.06.52.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 06:52:41 -0700 (PDT)
Message-ID: <607D8B28.1080200@gmail.com>
Date: Mon, 19 Apr 2021 09:52:40 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Martin Elfvelin <marelf-5@student.ltu.se>
References: <CADjF3PwZ4DQ5aQG7KsKV3=ZMG4zB_2GORZgKb0mBBgV_kwpXqQ@mail.gmail.com> <FE685529-0728-4EC7-B265-2221EF88808B@gmail.com> <CADjF3Py=7anwN+VG+ykyiwGosad45ypJdGSzYbcKVtDUWFV8CQ@mail.gmail.com>
In-Reply-To: <CADjF3Py=7anwN+VG+ykyiwGosad45ypJdGSzYbcKVtDUWFV8CQ@mail.gmail.com>
Message-ID-Hash: SNETEQA65NLH2KGKGBTEA4MHHOWTZULW
X-Message-ID-Hash: SNETEQA65NLH2KGKGBTEA4MHHOWTZULW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SNETEQA65NLH2KGKGBTEA4MHHOWTZULW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8235533783979875595=="

This is a multi-part message in MIME format.
--===============8235533783979875595==
Content-Type: multipart/alternative;
 boundary="------------010600060206050307070103"

This is a multi-part message in MIME format.
--------------010600060206050307070103
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/19/2021 09:49 AM, Martin Elfvelin wrote:
> Thank you for your input. Do you suggest adding a circulator to the=20
> system or rather replacing the switch with a circulator?
>
> Best regards,
> Martin
I'd say add a circulator in addition to your switch.
>
> On Mon, Apr 19, 2021 at 3:43 PM Marcus D Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     A circulator can give you an additional 20dB isolation.
>
>     Putting 5d!m into the RX2 port will likely destroy the RX
>     amplifier in the AD9361.
>
>     Sent from my iPhone
>
>     > On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>     >
>     > =EF=BB=BF
>     > Hello all,
>     >
>     > I am planning on using a USRP B200 in a half-duplex
>     communication system to communicate with a CubeSat. The TX/RX port
>     will be used for transmitting and the RX2 port for receiving. The
>     transmitting port will be connected to a power amplifier with a
>     60W output, this will in turn connect to an RF switch which will
>     switch between the TX/RX (transmitting) and RX2 (receiving). The
>     RF switch has an isolation of ~40-43 dB which means from the 47.78
>     dBm transmitted we will have roughly 5-8 dBm reflected to RX2.
>     Since the SDR is only rated to receive maximum 0 dBm I'm wondering
>     if someone has any ideas on how to handle this. I'm unsure if this
>     power will simply fry the board and I should implement a power
>     limiter or if there are other workarounds.
>     >
>     > Appreciate any help you can provide.
>     > Best regards,
>     > Martin Elfvelin
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------010600060206050307070103
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/19/2021 09:49 AM, Martin Elfveli=
n
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CADjF3Py=3D7anwN+VG+ykyiwGosad45ypJdGSzYbcKVtDUWFV8CQ@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div>Thank you for your input. Do you suggest adding a
          circulator to the system or rather replacing the switch with a
          circulator?</div>
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Martin<br>
        </div>
      </div>
    </blockquote>
    I'd say add a circulator in addition to your switch.<br>
    <blockquote
cite=3D"mid:CADjF3Py=3D7anwN+VG+ykyiwGosad45ypJdGSzYbcKVtDUWFV8CQ@mail.gm=
ail.com"
      type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 19, 2021 at 3:4=
3
          PM Marcus D Leech &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
A
          circulator can give you an additional 20dB isolation. <br>
          <br>
          Putting 5d!m into the RX2 port will likely destroy the RX
          amplifier in the AD9361. <br>
          <br>
          Sent from my iPhone<br>
          <br>
          &gt; On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via
          USRP-users &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
          &gt; <br>
          &gt; =EF=BB=BF<br>
          &gt; Hello all,<br>
          &gt; <br>
          &gt; I am planning on using a USRP B200 in a half-duplex
          communication system to communicate with a CubeSat. The TX/RX
          port will be used for transmitting and the RX2 port for
          receiving. The transmitting port will be connected to a power
          amplifier with a 60W output, this will in turn connect to an
          RF switch which will switch between the TX/RX (transmitting)
          and RX2 (receiving). The RF switch has an isolation of ~40-43
          dB which means from the 47.78 dBm transmitted we will have
          roughly 5-8 dBm reflected to RX2. Since the SDR is only rated
          to receive maximum 0 dBm I'm wondering if someone has any
          ideas on how to handle this. I'm unsure if this power will
          simply fry the board and I should implement a power limiter or
          if there are other workarounds.<br>
          &gt; <br>
          &gt; Appreciate any help you can provide.<br>
          &gt; Best regards,<br>
          &gt; Martin Elfvelin<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a
            moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010600060206050307070103--

--===============8235533783979875595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8235533783979875595==--
