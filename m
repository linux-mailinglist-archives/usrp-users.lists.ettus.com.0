Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 290B23E4BCE
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 20:03:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33F4B384893
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 14:03:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KMBexOoL";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id C6CED384324
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 14:02:38 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id f91so9451461qva.9
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 11:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=TqeXFgTjVKSGht1sFGMNiPtPolstTCklZfxZrr57fC0=;
        b=KMBexOoLHi3b3h3L1jJCVLiiaewRQSFBSqbjpsozkoD9phyoH6xLFTfBz88hXxuEV0
         ZGwKCrbvRP1R0QLG6C1kg5RnhRbK1TMtxNhFALMIsGqAod21uUSYEGmacmtzzj9wjiV/
         YpDGCkuXxs3pY6cYg6MB45kmGR2SG8rdLmrzubehktMboikjdbKZIRWaymvuLeQE4Lb2
         Pyye06Mu+Nz2uiGRgJhj+0LMDNYWefxKUzK1LyI5doivTevZdVmcF7QdXXQC4K2mPxpY
         4yURB8pTFbvnL4pfV0LDhimXwma3sJIcGm5y+ek6Rxwa1879c5cxMrxAQ5jGPgs30UQS
         llbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=TqeXFgTjVKSGht1sFGMNiPtPolstTCklZfxZrr57fC0=;
        b=ogQ3BRqiiN2b0tZAlmFAszuXq4vZYKWEnj/M6/0oxjODkBFAsaK9ba6gLkvSHYod+Q
         SRkMz+WxPUXsY8i5+5Wkm5m6OYScndd9gfQZ7VGpnU1KDS9FjQmpSe3/Owvm+ov2CDdy
         fmnTHVJMJSPfVPgWiVSq8AaAtlL8dAiTVtcASmdhhnTG6uJtsISYF4rUBDSmzP3EjfPh
         2viY764Sd5OEVIi8sUX0VF/BUYr10cbqJtXSrsg16kWNDz6PnB0KQlBoZHizovA/cQAA
         N3upZAUA73QA1lPau5thQ/GqobgK2bBnEl8jVA89QottQJWLeQva39eAsI1uzJyxgVb5
         nYWg==
X-Gm-Message-State: AOAM533aDCiVy0jOsuR+/N6YvoIXpQr3/VSudQAVWnk7Znr1Xk+9l4Gz
	sHP4IEPtCsrYNtLKQmFnmmaWmIxj6SDhuA==
X-Google-Smtp-Source: ABdhPJw+QkUxG3HuO3T9dRnNhjFMyiVFlE9U9gvvvbOvW1/mK+fvlLisZ6T8AP9saMz5xYjNMVR3Hw==
X-Received: by 2002:ad4:4eaf:: with SMTP id ed15mr25093528qvb.11.1628532158124;
        Mon, 09 Aug 2021 11:02:38 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id n124sm9617115qkf.119.2021.08.09.11.02.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 11:02:37 -0700 (PDT)
Message-ID: <61116DBC.2020308@gmail.com>
Date: Mon, 09 Aug 2021 14:02:36 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com> <CAEXYVK5o4sfq-rC4x34Hoq5cP7ahXksBhMdg4rtzp07sGGMWVw@mail.gmail.com> <BN1P110MB01323D8769737F7F320EB88D95F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM> <CAEXYVK4=93B2Xef37C0K4+R6yHB=2OKa0VWNkgg4VFjAPqVSuA@mail.gmail.com>
In-Reply-To: <CAEXYVK4=93B2Xef37C0K4+R6yHB=2OKa0VWNkgg4VFjAPqVSuA@mail.gmail.com>
Message-ID-Hash: EWSRHO55MUXVGQ2ONGV66A3Z63HKBXFO
X-Message-ID-Hash: EWSRHO55MUXVGQ2ONGV66A3Z63HKBXFO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 RFNoc radio block question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EWSRHO55MUXVGQ2ONGV66A3Z63HKBXFO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5085004932837130117=="

This is a multi-part message in MIME format.
--===============5085004932837130117==
Content-Type: multipart/alternative;
 boundary="------------080703090105070109030000"

This is a multi-part message in MIME format.
--------------080703090105070109030000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/09/2021 01:35 PM, Brian Padalino wrote:
> On Mon, Aug 9, 2021 at 1:21 PM Black, Robert <RBlack@d16.swri.us 
> <mailto:RBlack@d16.swri.us>> wrote:
>
>     Brian yes.- The Radio block is permanently running at a permanent
>     200 MSamp rate.
>
>     I would actually be useful to be able to change (reduce) the ADC
>     sampling clock, with appropriate analog anti-aliasing filtering in
>     front of the device. It is too bad that the radio hardware cannot
>     be configured to support this.
>
The ADC clock on the X310 is constrained by timing-closure constraints 
in the FPGA from what I understand, which is why it has only a couple of
   different rates. But if you made it broadly-flexible, then the 
various daughtercards available would dwindle to only those that have
   variable analog bandwidth to match the ADC and DAC rate.

When USRPs were first introduced, the ADC ran at a fixed 64Msps rate.  
Similarly with USRP2 and USRP N210 at 100Msps.  That changed in
   some parts of the family tree, but not others.

Many of the daugtercards for X3xx family use discrete synthesizer+mixer 
implementations, and it's fairly difficult to design variable-properties
   anti-alias filters that scale over very large bandwidths.    The 
fixed-converter-rate-with-DUC/DDC-in-FPGA is a pretty normal 
architecture, and
   it offers considerable advantages over analog-heavy approaches. Even 
in RFIC chips like AD9361, the variable-user-bandwidth is mostly
   implemented in an embedded DSP engine in the ASIC.


>
> Just curious - why the hesitation on using the DDC block?
>
> The oversampling ratio should actually help you out, unless you have 
> some really really close-in jammers - but even then would an analog 
> filter help that much?  The linearity of the ADC should be very good, 
> and digitally filtering should be superior - yes?  Possibly even get 
> some bit-growth with digital filtering and decimation?
>
> Brian
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------080703090105070109030000
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/09/2021 01:35 PM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAEXYVK4=3D93B2Xef37C0K4+R6yHB=3D2OKa0VWNkgg4VFjAPqVSuA@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Mon, Aug 9, 2021 at 1:21 PM Black, Robert &lt=
;<a
            moz-do-not-send=3D"true" href=3D"mailto:RBlack@d16.swri.us">R=
Black@d16.swri.us</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div lang=3D"EN-US">
              <div class=3D"gmail-m_7218659178059861720WordSection1">
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(31,73,125)">Brian
                    yes.- The Radio block is permanently running at a
                    permanent 200 MSamp rate.</span></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(31,73,125)">=A0</span></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(31,73,125)">I
                    would actually be useful to be able to change
                    (reduce) the ADC sampling clock, with appropriate
                    analog anti-aliasing filtering in front of the
                    device. It is too bad that the radio hardware cannot
                    be configured to support this.</span></p>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    The ADC clock on the X310 is constrained by timing-closure
    constraints in the FPGA from what I understand, which is why it has
    only a couple of<br>
    =A0 different rates. But if you made it broadly-flexible, then the
    various daughtercards available would dwindle to only those that
    have<br>
    =A0 variable analog bandwidth to match the ADC and DAC rate.<br>
    <br>
    When USRPs were first introduced, the ADC ran at a fixed 64Msps
    rate.=A0 Similarly with USRP2 and USRP N210 at 100Msps.=A0 That chang=
ed
    in<br>
    =A0 some parts of the family tree, but not others.<br>
    <br>
    Many of the daugtercards for X3xx family use discrete
    synthesizer+mixer implementations, and it's fairly difficult to
    design variable-properties<br>
    =A0 anti-alias filters that scale over very large bandwidths.=A0=A0=A0=
 The
    fixed-converter-rate-with-DUC/DDC-in-FPGA is a pretty normal
    architecture, and<br>
    =A0 it offers considerable advantages over analog-heavy approaches.=A0=
=A0
    Even in RFIC chips like AD9361, the variable-user-bandwidth is
    mostly<br>
    =A0 implemented in an embedded DSP engine in the ASIC.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAEXYVK4=3D93B2Xef37C0K4+R6yHB=3D2OKa0VWNkgg4VFjAPqVSuA@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Just curious - why the hesitation on using the DDC block?<=
/div>
          <div><br>
          </div>
          <div>The oversampling ratio should actually help you out,
            unless you have some really really close-in jammers - but
            even then would an analog filter help that much?=A0 The
            linearity of the ADC should be very good, and digitally
            filtering should be superior - yes?=A0 Possibly even get some
            bit-growth with digital filtering and decimation?</div>
          <div><br>
          </div>
          <div>Brian</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div lang=3D"EN-US">
              <div class=3D"gmail-m_7218659178059861720WordSection1">
                <div>
                  <div>
                    <div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
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

--------------080703090105070109030000--

--===============5085004932837130117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5085004932837130117==--
