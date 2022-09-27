Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A965EC4D8
	for <lists+usrp-users@lfdr.de>; Tue, 27 Sep 2022 15:46:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D7E53841B0
	for <lists+usrp-users@lfdr.de>; Tue, 27 Sep 2022 09:45:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664286359; bh=Naww6lhj+x2xDkTjhAaHomzoctuYZ3vLOWVJXCvAiII=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Yobvm7lCcMvsfw3uWadihZzFKiLorEs+Zric/EYOO5BLTKqcTq1WL+N01POAyZCwG
	 Zoec/Y6MXMhXABpogBMJjXFcB4THl7iI0RznlcSGxErSU48TTwyBrQpei2B+mdjxBe
	 3ZaKUaPZKsgFmFqoYm6GfoGfN+gLM3IW1rRSDQWHg7jnFdkCuluZgxeLLM4m1VG69F
	 L5Is3mPo1M7uhAP+VD73jj/clMufr8EpgtqVP6deVxNiMtsrzxFGc77gbK/co58lVx
	 BInFBEIo5oCjIkUKk4UihR9B9e9v6FTmCpLZg1P81esHYe38LkBX7YaZ3ERUafgkKc
	 vmaemQeiON+UA==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D746380B89
	for <usrp-users@lists.ettus.com>; Tue, 27 Sep 2022 09:44:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M0Rm7Zgj";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id g12so6025182qts.1
        for <usrp-users@lists.ettus.com>; Tue, 27 Sep 2022 06:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=FkHAzidov5q7RHAhTrOxmHmZbpx1sxVWv1CdcRLFcsA=;
        b=M0Rm7Zgj8LviqZ6+0Qfedw9UB1ICAZG2AY3r3IG6LXHqoriervAz+GpY8HHDZQVB/y
         AR2BNeA+9KWokPoR7R0KQS9uVFCAfrQiqegkmq28R2sSjA0/6QUIs0JjBzLM1cGIUL7J
         HmkpHOUQTYTxINhMNY5opVazn7HphXk+CHBpbHX4tCNT58tlJolyOWobyzPqa2dmZAKQ
         nqVihNYZveuihyD/eVhQZlC2jy//qjca/2i7s4RwKS1eRrf9kuX9ROVQRnvxu+hYqZ/o
         50Jqg0j4fz6o6VrWevotTHU8/BhG3b54WS+N5YsfFAViW51yX5kHmERef+F7BQ8cjQCB
         1Shg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=FkHAzidov5q7RHAhTrOxmHmZbpx1sxVWv1CdcRLFcsA=;
        b=sWOO/sy3x3NsPIemWiG8Bgnue8W5B1NLrhlgmOb1x9ADQ7OsSEBwskXmeFbkv/cgYh
         y6Pe+gRu2T3ZElUEC5GeMOff7zkVpJ+7BEIn3p1CLBheJ+5XYlmIatRqkij4Pxdp2Qhq
         kAsc5AM7hDJpXSp9vsvsfah8Af9hf5V0NWPbbP8nHFF2Z4IclVp3qaXUKnER3FiAzzN3
         UUlR5MGpOVk4CwshBMNRb+d6mVtzZj3yQK7hzcPtgPRsPdaJOdNr9jHW5m6z9AtxteYI
         vb85XZO42alCmW9yPrpE709uRpE8Cy+oEcawJwxYYcSQhNaMHBfDRkAMArlZCB8hZDbD
         2H6Q==
X-Gm-Message-State: ACrzQf2oUS5Nerd86Ss3un7TbjJCh6+g0+u56LN2QNr3yGhRC5BVlwZt
	BIzWXA7J1RjBfIvQXtrUfErsWwCTluc=
X-Google-Smtp-Source: AMsMyM7tluOU5v7YUAt0yWU6n6AjK7PjZzaJHVLXPNWYJG9DkxwaUYKMY2mRGXyP+2CUT+sdiO7ryA==
X-Received: by 2002:a05:622a:1391:b0:35d:fb0:d830 with SMTP id o17-20020a05622a139100b0035d0fb0d830mr21517765qtk.607.1664286249473;
        Tue, 27 Sep 2022 06:44:09 -0700 (PDT)
Received: from [192.168.2.184] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id t18-20020a05622a181200b0035cf5edefa6sm877761qtc.56.2022.09.27.06.44.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 06:44:08 -0700 (PDT)
Message-ID: <e32a7073-710a-1279-fbe9-ce50f3a80d78@gmail.com>
Date: Tue, 27 Sep 2022 09:44:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <166400467343.21418.7214555839691419559@mm2.emwd.com>
 <SN4PR0501MB3919A812E3D5A4D5A900E05DD9559@SN4PR0501MB3919.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SN4PR0501MB3919A812E3D5A4D5A900E05DD9559@SN4PR0501MB3919.namprd05.prod.outlook.com>
Message-ID-Hash: DBGLJHM4J2SBTPFRWBFMX4CVVZXJM76D
X-Message-ID-Hash: DBGLJHM4J2SBTPFRWBFMX4CVVZXJM76D
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-users Digest, Vol 145, Issue 55
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DBGLJHM4J2SBTPFRWBFMX4CVVZXJM76D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3208866527295551208=="

This is a multi-part message in MIME format.
--===============3208866527295551208==
Content-Type: multipart/alternative;
 boundary="------------gvkvlFFcHe0JJA1MHesKFzhB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------gvkvlFFcHe0JJA1MHesKFzhB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-27 09:01, Avila, Jose A wrote:
> Using the UBX board on the x310 and the lo leakage is the same=20
> amplitude if not higher than the signal being played with rfnoc=20
> samples from file.
>
Can you confirm that it placed .cal files in the appropriate directory:

https://files.ettus.com/manual/page_calibration.html#calibration_data

What gain setting are you using when transmitting?


>
> -----------------------------------------------------------------------=
-
> *From:* usrp-users-request@lists.ettus.com=20
> <usrp-users-request@lists.ettus.com>
> *Sent:* Saturday, September 24, 2022 3:31:13 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* USRP-users Digest, Vol 145, Issue 55
> Send USRP-users mailing list submissions to
> usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
> usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
> usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
> Today's Topics:
>
> =C2=A0=C2=A0 1. X310 calibration (Avila, Jose A)
> =C2=A0=C2=A0 2. Re: X310 calibration (Marcus D. Leech)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 23 Sep 2022 17:36:37 +0000
> From: "Avila, Jose A" <jaavila5@miners.utep.edu>
> Subject: [USRP-users] X310 calibration
> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Message-ID: <SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB3919
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .namprd05.prod.outlook.com>
> Content-Type: multipart/alternative; boundary=3D"_000_SN4PR0501MB3919
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 23D92DB5B6B7A2F84EE5D9519SN4=
PR0501MB3919_"
>
> I have noticeable lo leakage when running the cpp rfnoc replay samples=20
> from file. So I ran the calibration functions but it doesn't seem to=20
> be using the created files since I did not notice a difference. Is=20
> there a function call or setting in cpp I need to add? I thought it=20
> would be automatic. Using uhd 4.2 with X310.
> -------------- next part --------------
> A message part incompatible with plain text digests has been removed ..=
.
> Name: not available
> Type: text/html
> Size: 477 bytes
> Desc: not available
>
> ------------------------------
>
> Message: 2
> Date: Fri, 23 Sep 2022 14:16:48 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> Subject: [USRP-users] Re: X310 calibration
> To: usrp-users@lists.ettus.com
> Message-ID: <fc5fc6fa-d33f-9958-7e58-2fe637175680@gmail.com>
> Content-Type: text/plain; charset=3DUTF-8; format=3Dflowed
>
> On 2022-09-23 13:36, Avila, Jose A wrote:
> > I have noticeable lo leakage when running the cpp rfnoc replay sample=
s
> > from file. So I ran the calibration functions but it doesn't seem to
> > be using the created files since I did not notice a difference. Is
> > there a function call or setting in cpp I need to add? I thought it
> > would be automatic. Using uhd 4.2 with X310.
> >
> Which daughtercards are you using?
>
> I'll note that most of the DC-offset compensation is done in a
> daughtercard-independent way and doesn't rely on the
> =C2=A0=C2=A0 CAL functions as far as I know--there's a continuous "DC o=
ffset
> removal" function in the FPGA.
>
> When you say "noticeable" what is the magnitude we're talking about?
>
>
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 145, Issue 55
> *******************************************
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------gvkvlFFcHe0JJA1MHesKFzhB
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-27 09:01, Avila, Jose A
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SN4PR0501MB3919A812E3D5A4D5A900E05DD9559@SN4PR0501MB3919.namp=
rd05.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>
          <div>
            <div dir=3D"ltr">Using the UBX board on the x310 and the lo
              leakage is the same amplitude if not higher than the
              signal being played with rfnoc samples from file.</div>
          </div>
          <div id=3D"ms-outlook-mobile-signature">
            <div><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Can you confirm that it placed .cal files in the appropriate
    directory:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_calibration.html#calibration_data">https://files.ettus.com/manual/p=
age_calibration.html#calibration_data</a><br>
    <br>
    What gain setting are you using when transmitting?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SN4PR0501MB3919A812E3D5A4D5A900E05DD9559@SN4PR0501MB3919.namp=
rd05.prod.outlook.com">
      <div dir=3D"ltr">
        <div>
          <div id=3D"ms-outlook-mobile-signature">
            <div>
            </div>
            <div style=3D"direction:ltr" dir=3D"ltr"><br>
            </div>
          </div>
        </div>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
-request@lists.ettus.com">usrp-users-request@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-re=
quest@lists.ettus.com">&lt;usrp-users-request@lists.ettus.com&gt;</a><br>
          <b>Sent:</b> Saturday, September 24, 2022 3:31:13 AM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> USRP-users Digest, Vol 145, Issue 55</font>
        <div>=C2=A0</div>
      </div>
      <div class=3D"BodyFragment"><font size=3D"2"><span
            style=3D"font-size:11pt;">
            <div class=3D"PlainText">Send USRP-users mailing list
              submissions to<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"moz-=
txt-link-abbreviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a><br>
              <br>
              To subscribe or unsubscribe via email, send a message with
              subject or<br>
              body 'help' to<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"moz-=
txt-link-abbreviated" href=3D"mailto:usrp-users-request@lists.ettus.com">=
usrp-users-request@lists.ettus.com</a><br>
              <br>
              You can reach the person managing the list at<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"moz-=
txt-link-abbreviated" href=3D"mailto:usrp-users-owner@lists.ettus.com">us=
rp-users-owner@lists.ettus.com</a><br>
              <br>
              When replying, please edit your Subject line so it is more
              specific<br>
              than "Re: Contents of USRP-users digest..."<br>
              <br>
              Today's Topics:<br>
              <br>
              =C2=A0=C2=A0 1. X310 calibration (Avila, Jose A)<br>
              =C2=A0=C2=A0 2. Re: X310 calibration (Marcus D. Leech)<br>
              <br>
              <br>
----------------------------------------------------------------------<br=
>
              <br>
              Message: 1<br>
              Date: Fri, 23 Sep 2022 17:36:37 +0000<br>
              From: "Avila, Jose A" <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:jaavila5@miners.utep.edu">&lt;jaavila5@miners.utep.edu&gt;</=
a><br>
              Subject: [USRP-users] X310 calibration<br>
              To: <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-=
users@lists.ettus.com">"usrp-users@lists.ettus.com"</a>
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-user=
s@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              Message-ID:=C2=A0
              &lt;SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB391=
9<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .namprd05.prod.o=
utlook.com&gt;<br>
              Content-Type: multipart/alternative;=C2=A0=C2=A0=C2=A0
              boundary=3D"_000_SN4PR0501MB3919<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 23D92DB5B6B7A2F8=
4EE5D9519SN4PR0501MB3919_"<br>
              <br>
              I have noticeable lo leakage when running the cpp rfnoc
              replay samples from file. So I ran the calibration
              functions but it doesn't seem to be using the created
              files since I did not notice a difference. Is there a
              function call or setting in cpp I need to add? I thought
              it would be automatic. Using uhd 4.2 with X310.<br>
              -------------- next part --------------<br>
              A message part incompatible with plain text digests has
              been removed ...<br>
              Name: not available<br>
              Type: text/html<br>
              Size: 477 bytes<br>
              Desc: not available<br>
              <br>
              ------------------------------<br>
              <br>
              Message: 2<br>
              Date: Fri, 23 Sep 2022 14:16:48 -0400<br>
              From: "Marcus D. Leech" <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</=
a><br>
              Subject: [USRP-users] Re: X310 calibration<br>
              To: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              Message-ID:
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:fc5fc6fa-=
d33f-9958-7e58-2fe637175680@gmail.com">&lt;fc5fc6fa-d33f-9958-7e58-2fe637=
175680@gmail.com&gt;</a><br>
              Content-Type: text/plain; charset=3DUTF-8; format=3Dflowed<=
br>
              <br>
              On 2022-09-23 13:36, Avila, Jose A wrote:<br>
              &gt; I have noticeable lo leakage when running the cpp
              rfnoc replay samples <br>
              &gt; from file. So I ran the calibration functions but it
              doesn't seem to <br>
              &gt; be using the created files since I did not notice a
              difference. Is <br>
              &gt; there a function call or setting in cpp I need to
              add? I thought it <br>
              &gt; would be automatic. Using uhd 4.2 with X310.<br>
              &gt;<br>
              Which daughtercards are you using?<br>
              <br>
              I'll note that most of the DC-offset compensation is done
              in a <br>
              daughtercard-independent way and doesn't rely on the<br>
              =C2=A0=C2=A0 CAL functions as far as I know--there's a cont=
inuous
              "DC offset <br>
              removal" function in the FPGA.<br>
              <br>
              When you say "noticeable" what is the magnitude we're
              talking about?<br>
              <br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              Subject: Digest Footer<br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list -- <a class=3D"moz-txt-link-abbrevi=
ated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a><br>
              To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              End of USRP-users Digest, Vol 145, Issue 55<br>
              *******************************************<br>
            </div>
          </span></font></div>
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

--------------gvkvlFFcHe0JJA1MHesKFzhB--

--===============3208866527295551208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3208866527295551208==--
