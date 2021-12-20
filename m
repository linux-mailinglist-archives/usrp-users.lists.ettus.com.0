Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EADB47B115
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 17:29:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CCCB3847F2
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 11:29:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Bu4wZ4Dk";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 194D13847DB
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 11:28:29 -0500 (EST)
Received: by mail-qv1-f43.google.com with SMTP id q4so3204233qvh.9
        for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 08:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=IBGfZJF/E3FOOsfUZWAGKlmNjN5olyyXfvirsS/wPTs=;
        b=Bu4wZ4Dk7/bOBXLA2xYZHS7c34muwaQ7RCxF2VkpdsyvGzkF5iz6pfrJIkf0Qjz7zZ
         cqUTgXqMvwtbAqny9LOkcQSLNBQG9j/cdScCXE32YD+UZucWifYxtKudyq3hJavkxpup
         3IAfrvglV80rupfnVEpBRD988AXfTm4MEoBHMGnVadalossRv2RP7UBm23VTbJsAHXbo
         Hu3CPQ82yNixiRv3HHMsh7rM49+u1iw3aQqM2r6XAc0oD6WXv8B3dd8iUOrFscgjH/v2
         cbyVHD+Qer3Rz03pOor9gI4Sy/UNVgDgFHfpnimsiku3gQ6s46GUCr5Tp2jl2qHgHYER
         kwbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=IBGfZJF/E3FOOsfUZWAGKlmNjN5olyyXfvirsS/wPTs=;
        b=mSr8oQ6NCF7ZTJrjJWDj5Lvqlp2tyIFwBaFvLAq01H4w4k85Kakv99h0aUUISUygh4
         OJizcvPjYh0NW39owT5Eg4LqysCjRXrsZ30wymNuUxJWsj9g/tKQlZCrFbWEJeMFl+Xp
         DMGs5ehb/xn8c/e/oVVvBRMxYaltR6+9kF+bqYGcZAeIyTNQj+Yxx4wqtaugi7jMp6hg
         yW61XGD1dlE6JVvmoMeYKKic6H0bBKZ66mIpBlqGaaU7QgLG89PjnX8uiqBhMBX9c5gb
         GkJP6DeMy3GJi094+WjRV52+uQqCp8OyZW9Xm5tLHO3HEAlSqRtcOjY8Zd1ANKw2hAyE
         ErXg==
X-Gm-Message-State: AOAM532ErKQk44KgJ5/wRGqwHLuu8ptp37POogsqe5lUWBaXsMxL/C6g
	f4hdrOUehCAmn6NFgHFBFXwxo2dscJ6Qfg==
X-Google-Smtp-Source: ABdhPJzpIKOnd7bULmO8zyQZmm0+eSQTZz+ly+Z0rSx41BDxL7UEbMeTy0Ngz+oF/nbaowrt4GY0kg==
X-Received: by 2002:a05:6214:e47:: with SMTP id o7mr7235369qvc.13.1640017709194;
        Mon, 20 Dec 2021 08:28:29 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id n20sm11479863qkp.65.2021.12.20.08.28.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 08:28:28 -0800 (PST)
Message-ID: <232f5146-e677-89d5-2211-9dec8a794378@gmail.com>
Date: Mon, 20 Dec 2021 11:28:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com>
 <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com>
 <39042870.1585115.1639996294719@mail.yahoo.com>
 <MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
 <24577536.1842643.1640004636102@mail.yahoo.com>
 <MN2PR12MB3312017026FEDC5C5E5D5F46B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
 <921829071.1909465.1640014692296@mail.yahoo.com>
 <MN2PR12MB3312E25B1C5E0666072677C4B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB3312E25B1C5E0666072677C4B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: A7NKSEM46KOHPJJT2FCTSUH42ZZG5MCW
X-Message-ID-Hash: A7NKSEM46KOHPJJT2FCTSUH42ZZG5MCW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time different between X310 and N310 USRPs using UHD4.1.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A7NKSEM46KOHPJJT2FCTSUH42ZZG5MCW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7738946166540930601=="

This is a multi-part message in MIME format.
--===============7738946166540930601==
Content-Type: multipart/alternative;
 boundary="------------cawWDBqoFESDa1mZmY8Whifv"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cawWDBqoFESDa1mZmY8Whifv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-20 10:47, Jim Palladino wrote:
> Assuming this is the issue, inverting the 1pps input into only the=20
> X310 should fix the offset and get everything aligned. If you invert=20
> the input to both USRP devices, that would just flip the time offset.
>
> Hope that works for you. Happy holidays to you, too.
> Jim
>
For SOME USRPs, you can set_time_source("_external_") to invert the=20
sense of the 1PPS, but I find no evidence that X310 supports that. Would=20
have been
 =C2=A0 convenient.


> -----------------------------------------------------------------------=
-
> *From:* zhou <hwzhou@yahoo.com>
> *Sent:* Monday, December 20, 2021 10:38 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus=20
> M=C3=BCller <marcus.mueller@ettus.com>; Jim Palladino=20
> <jim@gardettoengineering.com>
> *Subject:* Re: [USRP-users] Re: Time different between X310 and N310=20
> USRPs using UHD4.1.0
> Hi Jim,
>
> Thanks for your explanation. I got it. Inverter may be a quick=20
> solution; just the duty cycle will become 80% after conversion. I will=20
> definitely try it. If not, I will rebuild X310 FPGA as you suggested.
>
> Have a Merry Christmas and happy New Year,
>
> Hongwei
>
>
>
> On Monday, 20 December 2021, 13:18:23 GMT, Jim Palladino=20
> <jim@gardettoengineering.com> wrote:
>
>
> Hongwei,
>
> If this is your problem, then "get_time_last_pps()" should report the=20
> same time between the X310 and N320, unless you happen to ask it (or=20
> if you set it) during that 200ms window between the 1pps rising and=20
> falling edges.
>
> However, like you said, absolute time will be off by 200ms. So, since=20
> the falling edge occurs 200ms after the rising edge of the 1pps pulse,=20
> the X310 will not start at 0s until 200ms after the N320 (or I assume=20
> N310). So, if you issue the "get_time_now()" command at the same time=20
> to both devices, the X310 will be 200ms behind the N320.
>
> To see if this is the issue, you could try to rebuild the X310 FPGA=20
> image with the fix, or you could try inverting the Octoclock output if=20
> you have an inverter (to see if the offset shifts the other way). To=20
> help us confirm that this was our issue, we used a function generator=20
> instead of the Octoclock to generate the 1pps to both devices. Then,=20
> we varied the duty cycle of the 1pps pulse and saw that the time=20
> difference between the two devices tracked the duty cycle (the time=20
> that the 1pps pulse is high per second).
>
> Also, the way we were setting the time, it actually looked like we=20
> were off by 800ms because we'd tell the USRPs to set their time to a=20
> specific value after the next pps. But, we'd issue this command right=20
> after the rising edge of the 1PPS pulse. So, this would set the N320=20
> to the time we specified 1 second later (when the next rising edge=20
> occurs). However, the X310 would see the falling edge occur 200ms=20
> after issuing this command. So, it would set it's time then. So, the=20
> way we were doing it, the X310 was actually getting set 800ms earlier=20
> than the N320.
>
> Hope this helps.
> Jim
>
> -----------------------------------------------------------------------=
-
> *From:* zhou <hwzhou@yahoo.com>
> *Sent:* Monday, December 20, 2021 7:50 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus=20
> M=C3=BCller <marcus.mueller@ettus.com>; Jim Palladino=20
> <jim@gardettoengineering.com>
> *Subject:* Re: [USRP-users] Time different between X310 and N310 USRPs=20
> using UHD4.1.0
> Hi Jim,
>
> Thank you so much for your quick reply. Your finding is very=20
> interesting and I believe it is very related to my problem.
> After some thinking, I am still having some confusion:
> Because N320 and X310 USRPs are using different pulse edges, their=20
> time 0s are actually different by 200ms in universal time, but their=20
> internal timers should be similar. When querying their time=20
> respectively, we should get similar time - the responses are their=20
> internal times. But I am seeing 200ms difference.
>
> Could you please give some comments on this?
>
> Thanks a lot,
> Hongwei
>
>
> On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino=20
> <jim@gardettoengineering.com> wrote:
>
>
> Hi,
>
> We had the exact same issue a couple months ago between an N320 and an=20
> X310. The issue is that the N320 (and I'm guessing the N310) detects=20
> the 1PPS pulse on the rising edge, as expected. The X310 detects the=20
> 1PPS edge on the falling edge. Note that the 1PPS pulse from the=20
> Octoclock stays high for about 200ms, so I'm guessing this is the=20
> issue you are seeing.
>
> We ended up making our own custom FPGA build for the X310. We modified=20
> the file:
> "uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".
>
> Originally, the PPS edge detection looked like:
> pps_edge<=3D pps_del & ~pps;
>
> We changed it to:
> pps_edge<=3D ~pps_del & pps;
>
> It would be good if this could get "fixed" in UHD, as it would be nice=20
> to not have to maintain a custom FPGA build. I'm not sure what effect=20
> this change will have on other USRP FPGA builds that use the same=20
> timekeeper.v file.
>
> In any case, I'm guessing this is your problem.
>
> Jim
>
>
>
>
>
> -----------------------------------------------------------------------=
-
> *From:* zhou via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Monday, December 20, 2021 5:31 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus=20
> M=C3=BCller <marcus.mueller@ettus.com>
> *Subject:* [USRP-users] Time different between X310 and N310 USRPs=20
> using UHD4.1.0
> Hi,
>
> I am using mixed types of USRPs in my applications, namely, X310 and=20
> N310. The signals are timed. I find 0.2-second time difference between=20
> these two USRPs.
> Details:
> Each USRP is controlled by a Linux server;
> The same Linux version in all PCs;
> All USRPs are connected to the same Octoclock;
> UHD version is 4.1.0 in Linux servers;
> All Linux servers are connected to a control PC which is the client;
> The sampling rates are different: 184.32MHz in X310 USRP and 245.76MHz=20
> in N310 USRP
>
> Control PC sends command to set time 0 after PPS in all USRPs, then=20
> query the time in each of them.
> The time difference between USRPs of the same type is small, ~2ms, but=20
> the time difference between different types of USRP is much bigger, ~0.=
2s.
> Times should be impacted by sampling rate; when setting timers, no=20
> signal is transmitted.
>
> 2ms time difference between USRPs could be due to network delay; 200ms=20
> can't be because of network. It seems to be due to HW in USRPs. Does=20
> this mean that X310 and N310 are not synchronized?
>
> Thanks for any comment,
>
> Hongwei
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------cawWDBqoFESDa1mZmY8Whifv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-20 10:47, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB3312E25B1C5E0666072677C4B87B9@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Assuming this is the issue, inverting the 1pps input into only
        the X310 should fix the offset and get everything aligned. If
        you invert the input to both USRP devices, that would just flip
        the time offset.=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hope that works for you. Happy holidays to you, too.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
    </blockquote>
    For SOME USRPs, you can set_time_source("_external_") to invert the
    sense of the 1PPS, but I find no evidence that X310 supports that.=C2=
=A0=C2=A0
    Would have been<br>
    =C2=A0 convenient.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB3312E25B1C5E0666072677C4B87B9@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> zho=
u
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:hwzhou@yahoo.=
com">&lt;hwzhou@yahoo.com&gt;</a><br>
          <b>Sent:</b> Monday, December 20, 2021 10:38 AM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a>; Marcus M=C3=BCller
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:marcus.muelle=
r@ettus.com">&lt;marcus.mueller@ettus.com&gt;</a>; Jim Palladino
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jim@gardettoe=
ngineering.com">&lt;jim@gardettoengineering.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Re: Time different between
          X310 and N310 USRPs using UHD4.1.0</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_ydp9ad5d71yahoo-style-wrap"
          style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;
          font-size:13px">
          <div dir=3D"ltr">Hi Jim,</div>
          <div dir=3D"ltr"><br>
          </div>
          <div dir=3D"ltr">Thanks for your explanation. I got it. Inverte=
r
            may be a quick solution; just the duty cycle will become 80%
            after conversion. I will definitely try it. If not, I will
            rebuild X310 FPGA as you suggested.</div>
          <div dir=3D"ltr"><br>
          </div>
          <div dir=3D"ltr">Have a Merry Christmas and happy New Year,</di=
v>
          <div dir=3D"ltr"><br>
          </div>
          <div dir=3D"ltr">Hongwei</div>
          <div dir=3D"ltr"><br>
          </div>
          <div dir=3D"ltr"><br>
          </div>
          <div><br>
          </div>
        </div>
        <div id=3D"x_ydpf5f19502yahoo_quoted_0502683226"
          class=3D"x_ydpf5f19502yahoo_quoted">
          <div style=3D"font-family:'Helvetica
            Neue',Helvetica,Arial,sans-serif; font-size:13px;
            color:#26282a">
            <div>On Monday, 20 December 2021, 13:18:23 GMT, Jim
              Palladino <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto=
:jim@gardettoengineering.com">&lt;jim@gardettoengineering.com&gt;</a> wro=
te:
            </div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>
              <div id=3D"x_ydpf5f19502yiv1424726215">
                <div dir=3D"ltr">
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    Hongwei,</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    <br clear=3D"none">
                  </div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    If this is your problem, then "get_time_last_pps()"
                    should report the same time between the X310 and
                    N320, unless you happen to ask it (or if you set it)
                    during that 200ms window between the 1pps rising and
                    falling edges.</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    <br clear=3D"none">
                  </div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    However, like you said, absolute time will be off by
                    200ms. So, since the falling edge occurs 200ms after
                    the rising edge of the 1pps pulse, the X310 will not
                    start at 0s until 200ms after the N320 (or I assume
                    N310). So, if you issue the "get_time_now()" command
                    at the same time to both devices, the X310 will be
                    200ms behind the N320.</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    <br clear=3D"none">
                  </div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    To see if this is the issue, you could try to
                    rebuild the X310 FPGA image with the fix, or you
                    could try inverting the Octoclock output if you have
                    an inverter (to see if the offset shifts the other
                    way). To help us confirm that this was our issue, we
                    used a function generator instead of the Octoclock
                    to generate the 1pps to both devices. Then, we
                    varied the duty cycle of the 1pps pulse and saw that
                    the time difference between the two devices tracked
                    the duty cycle (the time that the 1pps pulse is high
                    per second).</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    <br clear=3D"none">
                  </div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    Also, the way we were setting the time, it actually
                    looked like we were off by 800ms because we'd tell
                    the USRPs to set their time to a specific value
                    after the next pps. But, we'd issue this command
                    right after the rising edge of the 1PPS pulse. So,
                    this would set the N320 to the time we specified 1
                    second later (when the next rising edge occurs).
                    However, the X310 would see the falling edge occur
                    200ms after issuing this command. So, it would set
                    it's time then. So, the way we were doing it, the
                    X310 was actually getting set 800ms earlier than the
                    N320.</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    <br clear=3D"none">
                  </div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    Hope this helps.</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    Jim</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    <br clear=3D"none">
                  </div>
                  <hr tabindex=3D"-1" style=3D"display:inline-block;
                    width:98%">
                  <div id=3D"x_ydpf5f19502yiv1424726215yqt18463"
                    class=3D"x_ydpf5f19502yiv1424726215yqt5525963825">
                    <div dir=3D"ltr"
                      id=3D"x_ydpf5f19502yiv1424726215divRplyFwdMsg"><fon=
t
                        style=3D"font-size:11pt" face=3D"Calibri,
                        sans-serif" color=3D"#000000"><b>From:</b> zhou
                        <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto=
:hwzhou@yahoo.com">&lt;hwzhou@yahoo.com&gt;</a><br clear=3D"none">
                        <b>Sent:</b> Monday, December 20, 2021 7:50 AM<br
                          clear=3D"none">
                        <b>To:</b> <a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
                        <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto=
:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a>; Marc=
us
                        M=C3=BCller <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:marcus.mueller@ettus.com">&lt;marcus.mueller@ettus.com&gt;</=
a>; Jim
                        Palladino <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:jim@gardettoengineering.com">&lt;jim@gardettoengineering.com&g=
t;</a><br
                          clear=3D"none">
                        <b>Subject:</b> Re: [USRP-users] Time different
                        between X310 and N310 USRPs using UHD4.1.0</font>
                      <div>=C2=A0</div>
                    </div>
                    <div>
                      <div
                        class=3D"x_ydpf5f19502yiv1424726215x_ydpbf121617y=
ahoo-style-wrap"
                        style=3D"font-family:Helvetica
                        Neue,Helvetica,Arial,sans-serif; font-size:13px">
                        <div dir=3D"ltr">Hi Jim,</div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">Thank you so much for your quick
                          reply. Your finding is very interesting and I
                          believe it is very related to my problem.</div>
                        <div dir=3D"ltr">After some thinking, I am still
                          having some confusion:</div>
                        <div dir=3D"ltr">Because N320 and X310 USRPs are
                          using different pulse edges, their time 0s are
                          actually different by 200ms in universal time,
                          but their internal timers should be similar.
                          When querying their time respectively, we
                          should get similar time - the responses are
                          their internal times. But I am seeing 200ms
                          difference.</div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">Could you please give some
                          comments on this?</div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">Thanks a lot,<br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">Hongwei<br clear=3D"none">
                        </div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                        <div><br clear=3D"none">
                        </div>
                      </div>
                      <div
                        id=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yaho=
o_quoted_0577239239"
class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yahoo_quoted">
                        <div style=3D"font-family:'Helvetica
                          Neue',Helvetica,Arial,sans-serif;
                          font-size:13px; color:#26282a">
                          <div>On Monday, 20 December 2021, 11:04:09
                            GMT, Jim Palladino
                            <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:jim@gardettoengineering.com">&lt;jim@gardettoengineering.com&gt;</a>=
 wrote:
                          </div>
                          <div><br clear=3D"none">
                          </div>
                          <div><br clear=3D"none">
                          </div>
                          <div>
                            <div
                              id=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc=
08yiv3164486821">
                              <div dir=3D"ltr">
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  Hi,</div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <br clear=3D"none">
                                </div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  We had the exact same issue a couple
                                  months ago between an N320 and an
                                  X310. The issue is that the N320 (and
                                  I'm guessing the N310) detects the
                                  1PPS pulse on the rising edge, as
                                  expected. The X310 detects the 1PPS
                                  edge on the falling edge. Note that
                                  the 1PPS pulse from the Octoclock
                                  stays high for about 200ms, so I'm
                                  guessing this is the issue you are
                                  seeing.=C2=A0</div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <br clear=3D"none">
                                </div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"font-size:12pt;
                                    font-family:Calibri,Helvetica,sans-se=
rif">We
                                    ended up making our own custom FPGA
                                    build for the X310. We modified the
                                    file:</span><br clear=3D"none">
                                  <span style=3D"color:rgb(61,60,64);
                                    font-family:Calibri,Helvetica,sans-se=
rif;
                                    font-size:12pt; text-align:left;
                                    background-color:rgb(255,255,255);
                                    display:inline!important">"uhd/fpga/u=
srp3/lib/rfnoc/utils/timekeeper.v".</span><br
                                    clear=3D"none">
                                </div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <br clear=3D"none">
                                </div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"font-size:12pt;
                                    font-family:Calibri,Helvetica,sans-se=
rif">Originally,
                                    the PPS edge detection looked like:</=
span><br
                                    clear=3D"none">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Calibri,Helvetica,sans-se=
rif;
                                    font-size:12pt">pps_edge&lt;=3D
                                    pps_del &amp; ~pps;</span><br
                                    clear=3D"none">
                                </div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><br clear=3D"none">
                                  </span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Calibri,Helvetica,sans-se=
rif;
                                    font-size:12pt">We changed it to:</sp=
an></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><span
                                      style=3D"margin:0px; font-size:12pt=
;
font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span
                                        style=3D"margin:0px;
                                        font-size:12pt;
                                        font-family:Calibri,Helvetica,san=
s-serif;
                                        color:rgb(36,41,46)">pps_edge&lt;=
=3D
                                        ~pps_del &amp; pps;</span></span>=
<br
                                      clear=3D"none">
                                  </span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><span
                                      style=3D"margin:0px; font-size:12pt=
;
font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span
                                        style=3D"margin:0px;
                                        font-size:12pt;
                                        font-family:Calibri,Helvetica,san=
s-serif;
                                        color:rgb(36,41,46)"><br
                                          clear=3D"none">
                                      </span></span></span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><span
                                      style=3D"margin:0px; font-size:12pt=
;
font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span
                                        style=3D"margin:0px;
                                        font-size:12pt;
                                        font-family:Calibri,Helvetica,san=
s-serif;
                                        color:rgb(36,41,46)">It would be
                                        good if this could get "fixed"
                                        in UHD, as it would be nice to
                                        not have to maintain a custom
                                        FPGA build. I'm not sure what
                                        effect this change will have on
                                        other USRP FPGA builds that use
                                        the same timekeeper.v file.</span=
></span></span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><span
                                      style=3D"margin:0px; font-size:12pt=
;
font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span
                                        style=3D"margin:0px;
                                        font-size:12pt;
                                        font-family:Calibri,Helvetica,san=
s-serif;
                                        color:rgb(36,41,46)"><br
                                          clear=3D"none">
                                      </span></span></span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><span
                                      style=3D"margin:0px; font-size:12pt=
;
font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span
                                        style=3D"margin:0px;
                                        font-size:12pt;
                                        font-family:Calibri,Helvetica,san=
s-serif;
                                        color:rgb(36,41,46)">In any
                                        case, I'm guessing this is your
                                        problem.</span></span></span></di=
v>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><span
                                      style=3D"margin:0px; font-size:12pt=
;
font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span
                                        style=3D"margin:0px;
                                        font-size:12pt;
                                        font-family:Calibri,Helvetica,san=
s-serif;
                                        color:rgb(36,41,46)"><br
                                          clear=3D"none">
                                      </span></span></span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><span
                                      style=3D"margin:0px; font-size:12pt=
;
font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span
                                        style=3D"margin:0px;
                                        font-size:12pt;
                                        font-family:Calibri,Helvetica,san=
s-serif;
                                        color:rgb(36,41,46)">Jim</span></=
span></span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"><span
                                      style=3D"margin:0px; font-size:12pt=
;
font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span
                                        style=3D"margin:0px;
                                        font-size:12pt;
                                        font-family:Calibri,Helvetica,san=
s-serif;
                                        color:rgb(36,41,46)"><br
                                          clear=3D"none">
                                      </span></span></span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                </div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(36,41,46);
                                    font-family:Menlo,Monaco,Consolas,mon=
ospace;
                                    font-size:13px"></span>
                                  <div style=3D"color:rgb(61,60,64);
                                    font-family:sans-serif;
                                    font-size:14px;
                                    background-color:rgb(255,255,255)">
                                    <div>
                                      <div
                                        class=3D"x_ydpf5f19502yiv14247262=
15x_ydp2f3ddc08yiv3164486821a11y__section
x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821post
                                        x_ydpf5f19502yiv1424726215x_ydp2f=
3ddc08yiv3164486821other--root"
                                        style=3D"max-width:100%;
                                        padding:8px 0.5em 0px 1.5em">
                                        <br clear=3D"none">
                                      </div>
                                    </div>
                                    <div style=3D"display:inline;
                                      min-height:0px; z-index:-1;
                                      margin:0px">
                                      <div dir=3D"ltr"
                                        style=3D"visibility:hidden;
                                        z-index:-1;
                                        min-height:160.652px">
                                        <div style=3D"z-index:-1">
                                          <div style=3D"z-index:-1;
                                            min-height:160.652px">
                                          </div>
                                          <div style=3D"z-index:-1;
                                            min-height:160.652px">
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div style=3D"color:rgb(61,60,64);
                                    font-family:sans-serif;
                                    font-size:14px;
                                    background-color:rgb(255,255,255)">
                                    <div>
                                      <div
                                        class=3D"x_ydpf5f19502yiv14247262=
15x_ydp2f3ddc08yiv3164486821a11y__section
x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821post
                                        x_ydpf5f19502yiv1424726215x_ydp2f=
3ddc08yiv3164486821same--user
x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821same--root"
                                        style=3D"max-width:100%;
                                        padding:0px 0.5em 0px 1.5em">
                                        <span
class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821post__conten=
t"
                                          style=3D"display:table;
                                          width:760.415px; padding:0px
                                          8px 0px 5px; margin:0px auto;
                                          table-layout:fixed"></span></di=
v>
                                    </div>
                                  </div>
                                  <br clear=3D"none">
                                </div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(61,60,64);
                                    font-family:sans-serif;
                                    font-size:13.5px; text-align:left;
                                    display:inline!important"><br
                                      clear=3D"none">
                                  </span></div>
                                <div
                                  style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif;
                                  font-size:12pt; color:rgb(0,0,0)">
                                  <span style=3D"color:rgb(61,60,64);
                                    font-family:sans-serif;
                                    font-size:13.5px; text-align:left;
                                    display:inline!important"><br
                                      clear=3D"none">
                                  </span></div>
                                <hr tabindex=3D"-1"
                                  style=3D"display:inline-block;
                                  width:98%">
                                <div
                                  id=3D"x_ydpf5f19502yiv1424726215x_ydp2f=
3ddc08yiv3164486821yqt49578"
class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821yqt133261802=
8">
                                  <div dir=3D"ltr"
                                    id=3D"x_ydpf5f19502yiv1424726215x_ydp=
2f3ddc08yiv3164486821divRplyFwdMsg">
                                    <font style=3D"font-size:11pt"
                                      face=3D"Calibri, sans-serif"
                                      color=3D"#000000"><b>From:</b> zhou
                                      via USRP-users
                                      <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com=
&gt;</a><br
                                        clear=3D"none">
                                      <b>Sent:</b> Monday, December 20,
                                      2021 5:31 AM<br clear=3D"none">
                                      <b>To:</b>
                                      <a class=3D"moz-txt-link-abbreviate=
d" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a>
                                      <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com=
&gt;</a>;
                                      Marcus M=C3=BCller
                                      <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:marcus.mueller@ettus.com">&lt;marcus.mueller@ettus.com&gt;=
</a><br
                                        clear=3D"none">
                                      <b>Subject:</b> [USRP-users] Time
                                      different between X310 and N310
                                      USRPs using UHD4.1.0</font>
                                    <div>=C2=A0</div>
                                  </div>
                                  <div>
                                    <div
class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821x_ydpf231758=
5yahoo-style-wrap"
                                      style=3D"font-family:Helvetica
                                      Neue,Helvetica,Arial,sans-serif;
                                      font-size:13px">
                                      <div dir=3D"ltr">Hi,</div>
                                      <div dir=3D"ltr"><br clear=3D"none"=
>
                                      </div>
                                      <div dir=3D"ltr">I am using mixed
                                        types of USRPs in my
                                        applications, namely, X310 and
                                        N310. The signals are timed. I
                                        find 0.2-second time difference
                                        between these two USRPs.</div>
                                      <div dir=3D"ltr">Details:</div>
                                      <div dir=3D"ltr">Each USRP is
                                        controlled by a Linux server;<br
                                          clear=3D"none">
                                      </div>
                                      <div dir=3D"ltr">
                                        <div>
                                          <div dir=3D"ltr"
                                            style=3D"color:rgb(0,0,0);
                                            font-family:Helvetica
                                            Neue,Helvetica,Arial,sans-ser=
if">
                                            The same Linux version in
                                            all PCs;</div>
                                          <div dir=3D"ltr">All USRPs are
                                            connected to the same
                                            Octoclock;<br clear=3D"none">
                                          </div>
                                        </div>
                                      </div>
                                      <div dir=3D"ltr">UHD version is
                                        4.1.0 in Linux servers;</div>
                                      <div dir=3D"ltr">All Linux servers
                                        are connected to a control PC
                                        which is the client;</div>
                                      <div dir=3D"ltr">The sampling rates
                                        are different: 184.32MHz in X310
                                        USRP and 245.76MHz in N310 USRP</=
div>
                                      <div dir=3D"ltr"><br clear=3D"none"=
>
                                      </div>
                                      <div dir=3D"ltr">Control PC sends
                                        command to set time 0 after PPS
                                        in all USRPs, then query the
                                        time in each of them.</div>
                                      <div dir=3D"ltr">The time differenc=
e
                                        between USRPs of the same type
                                        is small, ~2ms, but the time
                                        difference between different
                                        types of USRP is much bigger,
                                        ~0.2s.</div>
                                      <div dir=3D"ltr">Times should be
                                        impacted by sampling rate; when
                                        setting timers, no signal is
                                        transmitted.</div>
                                      <div dir=3D"ltr"><br clear=3D"none"=
>
                                      </div>
                                      <div dir=3D"ltr">2ms time differenc=
e
                                        between USRPs could be due to
                                        network delay; 200ms can't be
                                        because of network. It seems to
                                        be due to HW in USRPs. Does this
                                        mean that X310 and N310 are not
                                        synchronized?</div>
                                      <div dir=3D"ltr"><br clear=3D"none"=
>
                                      </div>
                                      <div dir=3D"ltr">Thanks for any
                                        comment,</div>
                                      <div dir=3D"ltr"><br clear=3D"none"=
>
                                      </div>
                                      <div dir=3D"ltr">Hongwei</div>
                                      <div dir=3D"ltr"><br clear=3D"none"=
>
                                      </div>
                                      <div dir=3D"ltr"><br clear=3D"none"=
>
                                      </div>
                                      <div dir=3D"ltr"><br clear=3D"none"=
>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class=3D"x_ydpf5f19502yqt5525963825"
                id=3D"x_ydpf5f19502yqt37947">____________________________=
___________________<br
                  clear=3D"none">
                USRP-users mailing list -- <a shape=3D"rect"
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"t=
rue"
                  class=3D"moz-txt-link-freetext">
                  usrp-users@lists.ettus.com</a><br clear=3D"none">
                To unsubscribe send an email to <a shape=3D"rect"
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"t=
rue"
                  class=3D"moz-txt-link-freetext">
                  usrp-users-leave@lists.ettus.com</a><br clear=3D"none">
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
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
--------------cawWDBqoFESDa1mZmY8Whifv--

--===============7738946166540930601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7738946166540930601==--
