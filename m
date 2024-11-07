Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C529C101F
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 21:54:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0844E3809B3
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 15:54:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731012891; bh=opqBiBHPZVCJchVMqLkQl3TM6VgkVaAWLM2f+GUXbdg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KtSfy1TGd0t85XWDBHjDTS4VHaJbnhis8Oq2dVxgiQ0kTfy28GUILWpIpfRAYt9bN
	 Is9+bgF52Pv5DcLpWv8IuszEXcbtwdPcaa4WEDrYkLZLgHsAoguc9tg9KfRpK2zRsC
	 re0Cp2MGlrTOy8oXaSyBTqL9Ddx6+UFxcjD3lNVGWDZuCaFDoM+/Gca2aABAT8rUhz
	 MeZO9oQUIeFi8R/cbZiQy+nZNCLITkS+Xm5O/mGIBHyn3jLVvntWzMA+QYFMOHyE1M
	 40vdF4F0zk/Zcd2+8WLNv2Jma72Kp9sXArRUkqpjQ8u/Ro5RCvhqvXQC/+qDmjwPQe
	 VoDcFsyAfrmIA==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id CAC57386376
	for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2024 15:54:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mh3BdTCe";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e2974743675so1408359276.1
        for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2024 12:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731012842; x=1731617642; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wSjVXmX0V+0mT7ksu50/5n7QHCIjHv32HaZD9r+Rgps=;
        b=Mh3BdTCeKZt8kRkNQjw+77zMblsM+Pif1vDGoJ0wpGMFNrU6ygvgjjCKr4WWWLaTFu
         raHFJsEzSJqnuCPkr++V3QCc4/al3ax5OeM4v7nm7JZPt17lUUekwVi/WvwUFaFU9T/R
         VV1/40t+1TUkdfHPNUmIpUC9eYAcECyoMt2lirDskT9cIk84brNkcZS79gMsFSap9h2+
         M+MKXcaK1zgUvrFuNYdILWszwcobAJHOoIZ8n+Q5fwJstmDdAqm7s4PL4FhXs7rK+OTH
         JB1ufOZjv6lRMDiCteUng6R/BmwXdbA9JyKdfhxLsxOlsH1ZUD/tXZKT/eJQ6r51Vw0f
         xJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731012842; x=1731617642;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wSjVXmX0V+0mT7ksu50/5n7QHCIjHv32HaZD9r+Rgps=;
        b=RQEohnCotFnK4JTv9PqyhfKfRipAyKdB+LHZmO+XwESzs0Zx+NEkf4+rEswa9waHod
         4tGfJ+nWLjwSjZSsrEfcTdqKjcgvMKMhVJLJ+3Zoq1GePEPm/EMhLaqwAfMlLBLI83aY
         ipSmm9GzVfQTt/evfRmh1cIUgD861o3SfMDiAJpMc01PSBbI4Nk05n50MthEwQqJOsSV
         CcHeL9sO2xkgIrrugleY5+OwQL8jBewth/wxsEfoDpLciG1zYQ+aoOTl8yhapmEUD6/h
         sg+aG0/JU8vLuw1z38H3WiqSMFbzoT2u4+Z+WY1cRsxzxE+Bft7TolG0rHaIocuP3W38
         jCUw==
X-Gm-Message-State: AOJu0YxSGgiAG68XwWBEZhBF7tDWD3407Svs9Q2S0XsqpsIDEwEJWO+C
	7znwXB0D+tYdE+6/sJj2pqq/i/GL3eEpLjFAntDmEuLN/qJKD7xB7fne6A==
X-Google-Smtp-Source: AGHT+IHaV8fI889dkz5IqPgiBuPcfDzDlxIoQpR+pvCQZpUqPQmK0wwpM10CRRpCJr6R9jeEmbaskg==
X-Received: by 2002:a05:6902:340c:b0:e2b:d0f6:cdf0 with SMTP id 3f1490d57ef6-e337f904b79mr429364276.44.1731012841686;
        Thu, 07 Nov 2024 12:54:01 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-462ff4671f6sm11874741cf.39.2024.11.07.12.54.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2024 12:54:01 -0800 (PST)
Message-ID: <1b98e250-7c5d-42af-ab49-678be08d0dab@gmail.com>
Date: Thu, 7 Nov 2024 15:54:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEZoMYOCpG0bx2hMpBQGyjG3A0OfFTbLYsBTxVZ7=jaVZm2XSw@mail.gmail.com>
 <6f137c76-b4c4-4a53-a16b-766f0c0c7299@gmail.com>
 <CAEZoMYOpzDMfSEQ0NyL9C-VXQ75kOMvR-QrkNK1X3zGF75krOw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEZoMYOpzDMfSEQ0NyL9C-VXQ75kOMvR-QrkNK1X3zGF75krOw@mail.gmail.com>
Message-ID-Hash: NIW5ABE6LNYVOI3RJTZBGN2UBK6LKWAZ
X-Message-ID-Hash: NIW5ABE6LNYVOI3RJTZBGN2UBK6LKWAZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: First 10 Samples From First Receive Always 0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NIW5ABE6LNYVOI3RJTZBGN2UBK6LKWAZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4394408094852935771=="

This is a multi-part message in MIME format.
--===============4394408094852935771==
Content-Type: multipart/alternative;
 boundary="------------w0nMh3AadZf9RGLyGT1dMPqY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------w0nMh3AadZf9RGLyGT1dMPqY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/11/2024 15:46, Chris Wozny wrote:
> Thank you! The sample delay induced by the filter taps makes sense. Is=20
> there a best practice that folks go with to deal with this or is it so=20
> insignificant=C2=A0that people don't care? I was thinking of either=20
> requesting 10 more samples and skipping the first 10 when writing to=20
> the filesystem / reading them into the software that consumes them.
I think it depends very much on the application.

There are other things that may be "surprising" if you aren't used to=20
systems that sample the physical world.=C2=A0 If you
 =C2=A0 start sampling right after a re-tune event, for example, there wi=
ll=20
inevitably be transients in the data.=C2=A0 This can be
 =C2=A0 kind of unsettling for people who have spent most of their time i=
n=20
the strictly-digital world of computers and
 =C2=A0 at the higher-layers of comms systems, where everything is alread=
y=20
nicely quantized for you and delivered in
 =C2=A0 nice neat bits...




>
> On Thu, Nov 7, 2024 at 3:03=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 07/11/2024 14:53, Chris Wozny wrote:
>     > I had noticed that the first ten samples of my application were
>     always
>     > coming up as zero regardless of whether it was 8-bits on host or
>     > 16-bits on host. I went down the path of trying to reproduce a
>     minimal
>     > example to share with=C2=A0this mailing list, however I then real=
ized
>     that
>     > even the example "rx_timed_samples.cpp" was also producing the sa=
me
>     > results. This occurred with two different b200minis and a B210 wi=
th
>     > UHD 4.7.0.0. I had to de-boostify the source code to run on my
>     system
>     > and specify a center frequency and receive gain, but am able to
>     > reproduce this issue every time. I've confirmed that a signal is
>     > present by using a signal generator for one setup and also with
>     an OTA
>     > setup tuned to 2421 MHz with AGC disabled and receive gain set
>     to 70 dB.
>     >
>     > Has anyone observed this issue or can anyone else reproduce it
>     using
>     > the timed receive example as well? Sorry if I am missing critical
>     > details that would help diagnose the issue, let me know if any
>     > additional information would be helpful.
>     >
>     > - Chris
>     >
>     The signal must necessarily pass through some digital filtering on
>     the
>     way between the antenna and your application.
>     =C2=A0=C2=A0 Those digital filters have a certain length, and thus =
group delay.
>     That filter must necessarily have *some* value already
>     =C2=A0=C2=A0 in it prior to your samples being presented to it.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------w0nMh3AadZf9RGLyGT1dMPqY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/11/2024 15:46, Chris Wozny wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEZoMYOpzDMfSEQ0NyL9C-VXQ75kOMvR-QrkNK1X3zGF75krOw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thank you! The sample delay induced by the filter
        taps makes sense. Is there a best practice that folks go with to
        deal with this or is it so insignificant=C2=A0that people don't c=
are?
        I was thinking of either requesting 10 more samples and skipping
        the first 10 when writing to the filesystem / reading them into
        the software that consumes them.</div>
    </blockquote>
    I think it depends very much on the application.<br>
    <br>
    There are other things that may be "surprising" if you aren't used
    to systems that sample the physical world.=C2=A0 If you<br>
    =C2=A0 start sampling right after a re-tune event, for example, there
    will inevitably be transients in the data.=C2=A0 This can be<br>
    =C2=A0 kind of unsettling for people who have spent most of their tim=
e in
    the strictly-digital world of computers and<br>
    =C2=A0 at the higher-layers of comms systems, where everything is alr=
eady
    nicely quantized for you and delivered in<br>
    =C2=A0 nice neat bits...<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEZoMYOpzDMfSEQ0NyL9C-VXQ75kOMvR-QrkNK1X3zGF75krOw@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2024 at 3:03=
=E2=80=AFPM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style=
:solid;border-left-color:rgb(204,204,204);padding-left:1ex">On
          07/11/2024 14:53, Chris Wozny wrote:<br>
          &gt; I had noticed that the first ten samples of my
          application were always <br>
          &gt; coming up as zero regardless of whether it was 8-bits on
          host or <br>
          &gt; 16-bits on host. I went down the path of trying to
          reproduce a minimal <br>
          &gt; example to share with=C2=A0this mailing list, however I th=
en
          realized that <br>
          &gt; even the example "rx_timed_samples.cpp" was also
          producing the same <br>
          &gt; results. This occurred with two different b200minis and a
          B210 with <br>
          &gt; UHD 4.7.0.0. I had to de-boostify the source code to run
          on my system <br>
          &gt; and specify a center frequency and receive gain, but am
          able to <br>
          &gt; reproduce this issue every time. I've confirmed that a
          signal is <br>
          &gt; present by using a signal generator for one setup and
          also with an OTA <br>
          &gt; setup tuned to 2421 MHz with AGC disabled and receive
          gain set to 70 dB.<br>
          &gt;<br>
          &gt; Has anyone observed this issue or can anyone else
          reproduce it using <br>
          &gt; the timed receive example as well? Sorry if I am missing
          critical <br>
          &gt; details that would help diagnose the issue, let me know
          if any <br>
          &gt; additional information would be helpful.<br>
          &gt;<br>
          &gt; - Chris<br>
          &gt;<br>
          The signal must necessarily pass through some digital
          filtering on the <br>
          way between the antenna and your application.<br>
          =C2=A0=C2=A0 Those digital filters have a certain length, and t=
hus group
          delay.=C2=A0=C2=A0 <br>
          That filter must necessarily have *some* value already<br>
          =C2=A0=C2=A0 in it prior to your samples being presented to it.=
<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
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

--------------w0nMh3AadZf9RGLyGT1dMPqY--

--===============4394408094852935771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4394408094852935771==--
