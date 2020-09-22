Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED612274AFE
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 23:16:15 +0200 (CEST)
Received: from [::1] (port=59622 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKpe2-0007Gl-Ks; Tue, 22 Sep 2020 17:16:14 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:41139)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kKpdy-00077C-KF
 for USRP-users@lists.ettus.com; Tue, 22 Sep 2020 17:16:10 -0400
Received: by mail-qk1-f176.google.com with SMTP id g72so20646931qke.8
 for <USRP-users@lists.ettus.com>; Tue, 22 Sep 2020 14:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=sCLKh8MkFexTfToar2qGWN2asLJxFYUYG4oZ3ObuuxM=;
 b=R18sM+61+7eMLPd10FbXo6t6iTvfx0pkeY4P7j3RZ6sgWmHtl6f1K1JlClHSJ2m2U9
 DPJe3QzhCQ9SS5RbxUWBHFbpP/VPUSwcGW5w+jaDo3DucHISBs2q1eoOKGnTsKrDTIqh
 zp5hLRFH4tvx9VClrh6GpzHlFml8LavrhwjyIlwu8vun3oxB0/uE1oyLwzUNqXczQMow
 ydA9xFuQr1RopOeE67Whw7nO228POttclZRghUzwj6OnDcEfuktea7q6Zv23pMHXM4KU
 EEMrJkvaQuyciRzpE3uzz7wG5oGxQ3RbD9xJjpzuJ9So76ZYRevrduxG40cq4wAyEiut
 Em1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=sCLKh8MkFexTfToar2qGWN2asLJxFYUYG4oZ3ObuuxM=;
 b=SPVGcHe+8KkFizWp+68Rql/3kmtF7PXcF0vYKoAhJHlpm+7bIYaA/R9iRq5nZb1+vP
 s0xyF6N6Exbz6lYh3Q5KhcFhqt902NndMKmzqtC4VFYtt8cojziVe8Nmj1VyHZrmQna8
 m9qQPAie6Q/elkQZ8eM/nZGTqfy5SslBm/a0fRM5loi9W3b/TuQ6UYdS/4nCEn6ZZ0ou
 uAub7l2wjXx4/Y/2IiAk188VMhjNguqWS4yakz6o+Wc3Z6QZWB26f7i0g8kSrI+hL3wC
 ghSAn9hoi0dSjisy/04K2HPofEKGyoov27p241z/hSQnabPsOyOVa2SItN/B+JVClDU7
 xfXw==
X-Gm-Message-State: AOAM533CsRdUjVNFmU1/nL1OL0miryorROEyWUIHxEV7ZJHZxRYqqtok
 KMqZpe8gLdYEgWAKM9CcZTbpN2lPj/NXsg==
X-Google-Smtp-Source: ABdhPJzZfc93Tzaf+GmoZjzd4snKJEkTOzyYXHM54GHO7EGw+fpPwKHdost9YvbJ8hAsHmTVBi5vsw==
X-Received: by 2002:a05:620a:11b1:: with SMTP id
 c17mr2004610qkk.94.1600809329807; 
 Tue, 22 Sep 2020 14:15:29 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id z3sm12678585qkj.0.2020.09.22.14.15.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Sep 2020 14:15:29 -0700 (PDT)
Message-ID: <5F6A6970.9000501@gmail.com>
Date: Tue, 22 Sep 2020 17:15:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Christopher.Flood@colorado.edu
CC: USRP-users@lists.ettus.com
References: <CAM+cdhJsqS=h8E1KruwNC0gHk-fvb6TLt_r64W9aR4Vk4ZZ22Q@mail.gmail.com>
 <0A090987-67A8-41CB-ACF6-66356B789250@gmail.com>
 <CAM+cdh+6dRDx1wLytKDhi_oOSkUxse71qzQW7gEXWN39RUdrNQ@mail.gmail.com>
 <5F6A6701.6030604@gmail.com>
 <CAM+cdhLmg-7j=DL=BXX2pxDvtcHj5SMXcb_8QZmbSVVYnk5wcw@mail.gmail.com>
In-Reply-To: <CAM+cdhLmg-7j=DL=BXX2pxDvtcHj5SMXcb_8QZmbSVVYnk5wcw@mail.gmail.com>
Subject: Re: [USRP-users] Ettus N310: Tuning in GNU Radio
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============5705009955772857831=="
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

This is a multi-part message in MIME format.
--===============5705009955772857831==
Content-Type: multipart/alternative;
 boundary="------------010107010601020908030708"

This is a multi-part message in MIME format.
--------------010107010601020908030708
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/22/2020 05:14 PM, Christopher Flood wrote:
> Sorry about that, I should have mentioned that first.
>
> Okay, so it seems like there is a lower limit on frequency resolution. 
> I saw some of the device arguments make it possible to bypass the DDC 
> and the DUC - would that buy me any resolution?
Lord no!   The synthesizers are *very* coarse compared to what we're 
talking about...


>
> -Chris
>
>
> On Tue, Sep 22, 2020 at 3:05 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 09/22/2020 04:41 PM, Christopher Flood wrote:
>     > I agree with you there. I'm using a Rb external reference that I
>     > believe the PLLs are locking to based on some signal transmission
>     > tests and looking at signals on an oscilloscope. With the Rb ref I
>     > would expect the frequency to be off by ~.001Hz (or smaller) out of
>     > 10MHz.
>     >
>     > Some more details about the test I'm currently running, if that
>     helps:
>     > I am putting the 10MHz Rb ref into the external ref of the N310.
>     I am
>     > then generating a 10MHz signal on the TX port of the SDR and
>     feeding
>     > it right back into an RX port. Both the UHD Source and UHD Sink
>     in GNU
>     > radio are being told to use the external clock reference. I know
>     10MHz
>     > is towards the low end of this device's capability, so I tried the
>     > same test with 20 / 30 / 40MHz and got similar results.
>     >
>     > -Chris
>     Ah.  Knowing you were using an external Rb reference would have
>     steered
>     me in a different direction.
>
>     You're probably looking at residual resolution of the complex phase
>     rotator in the DDC/DUC logic in the DSP portions of the FPGA.
>
>     The resolution of the AD9371 synthesizers is fairly coarse as I
>     recall--in the kHz range (which is typical for synthesizers
>     intended for
>        deployment in telecom applicatons).
>
>     The DDC and DUC logic in the FPGA likely has a sub-Hz resolution--the
>     number 0.38Hz sticks in my head but that was from an evaluation of
>        the Gen 2 USRP FPGA from a number of years ago.  So you're
>     probably
>     looking at the aggregate error from the DDC and DUC combined.
>


--------------010107010601020908030708
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/22/2020 05:14 PM, Christopher
      Flood wrote:<br>
    </div>
    <blockquote
cite="mid:CAM+cdhLmg-7j=DL=BXX2pxDvtcHj5SMXcb_8QZmbSVVYnk5wcw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">Sorry about that, I should have mentioned that
          first. 
          <div><br>
          </div>
          <div>Okay, so it seems like there is a lower limit on
            frequency resolution. I saw some of the device arguments
            make it possible to bypass the DDC and the DUC - would that
            buy me any resolution? <br>
          </div>
        </div>
      </div>
    </blockquote>
    Lord no!   The synthesizers are *very* coarse compared to what we're
    talking about...<br>
    <br>
    <br>
    <blockquote
cite="mid:CAM+cdhLmg-7j=DL=BXX2pxDvtcHj5SMXcb_8QZmbSVVYnk5wcw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div><br>
          </div>
          <div>-Chris</div>
          <div><br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Tue, Sep 22, 2020 at 3:05
            PM Marcus D. Leech &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">On 09/22/2020 04:41 PM,
            Christopher Flood wrote:<br>
            &gt; I agree with you there. I'm using a Rb external
            reference that I <br>
            &gt; believe the PLLs are locking to based on some signal
            transmission <br>
            &gt; tests and looking at signals on an oscilloscope. With
            the Rb ref I <br>
            &gt; would expect the frequency to be off by ~.001Hz (or
            smaller) out of <br>
            &gt; 10MHz.<br>
            &gt;<br>
            &gt; Some more details about the test I'm currently running,
            if that helps: <br>
            &gt; I am putting the 10MHz Rb ref into the external ref of
            the N310. I am <br>
            &gt; then generating a 10MHz signal on the TX port of the
            SDR and feeding <br>
            &gt; it right back into an RX port. Both the UHD Source and
            UHD Sink in GNU <br>
            &gt; radio are being told to use the external clock
            reference. I know 10MHz <br>
            &gt; is towards the low end of this device's capability, so
            I tried the <br>
            &gt; same test with 20 / 30 / 40MHz and got similar results.<br>
            &gt;<br>
            &gt; -Chris<br>
            Ah.  Knowing you were using an external Rb reference would
            have steered <br>
            me in a different direction.<br>
            <br>
            You're probably looking at residual resolution of the
            complex phase <br>
            rotator in the DDC/DUC logic in the DSP portions of the
            FPGA.<br>
            <br>
            The resolution of the AD9371 synthesizers is fairly coarse
            as I <br>
            recall--in the kHz range (which is typical for synthesizers
            intended for<br>
               deployment in telecom applicatons).<br>
            <br>
            The DDC and DUC logic in the FPGA likely has a sub-Hz
            resolution--the <br>
            number 0.38Hz sticks in my head but that was from an
            evaluation of<br>
               the Gen 2 USRP FPGA from a number of years ago.  So
            you're probably <br>
            looking at the aggregate error from the DDC and DUC
            combined.<br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010107010601020908030708--


--===============5705009955772857831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5705009955772857831==--

