Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B113E93DD
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 16:44:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93096384809
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 10:44:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M0r4QLQj";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A92D380AA9
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 10:43:51 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id c6so2259307qtv.5
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 07:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=LasKVfbAb1mzoolaHg8sTFPTt6zwvfTLTNFJyap+lno=;
        b=M0r4QLQjW1bzInol+S95vsy0Uswj2yH8viE1L7kUtv1hqa5h9VVWSWV55UnAMvpG9W
         BNDOJ0yLnyJvPD2HdmHzKCCp0H1p4OuYC3XfWhIB4PHM+KdK+/eI4Hg7GerlJq6VOBWq
         ihAFPRxkjIBsbqdHNbc6THWvkLGlHe15U7hzuPIvykvUJvZTelNpdCxqAeM6rDW33TV/
         NlUDgCC4TfvQx6KkbSbnM6ARfHjob7tjfW1E70Ldxinbe4as8qDUpicSYA/A4XocxPhE
         gxb89eVce4/r63yHlVAp/KiOREuFktUGTw8n7hRCx8+aV3AqiwPLwnYTPYrFSQLvmdwK
         y7IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=LasKVfbAb1mzoolaHg8sTFPTt6zwvfTLTNFJyap+lno=;
        b=U9xkpbBwQwJKFc0jWvqxE6XiXjqEordkIKpTB0txMtQrH6eA2PRkOLCwgA99T28ZOD
         MXrsRJVZRGTLk3/tf3uXZH5ThfT3QE0YtJY89inHOACPEYNpepC2A4jrehNyysOMi+15
         F3SjVlPrWd1xbYPQUVVIwcz8Pq7bjuy6HmxEMCi096Mkj33OpQAqQTj+Q8+sXN1mw2Y7
         dNvxwlukK/hAvl9t99x82JjiokiLQu9Eefu3U5lbvpNlyiykrvgfsqhYmbsJ7sZsRPxJ
         d+ZnBhD6KQg7rSU5/KnD4HPXterfqoo/CXExk6EzSAs2ncKtvuWqMIOnPetXj0WvFGjY
         Cv3g==
X-Gm-Message-State: AOAM532yIjFMUkRr3qOc+U3Bss9mGoX4jaLo7DK62dFYkHII5NvsTyBa
	AiGTcPIEseOkL7X/oM5qsr5pX1mW7cR7ig==
X-Google-Smtp-Source: ABdhPJxS9USBPH+UAW2Bqd0juQg8je4H3o1D20Nf8KZgrJj7k1pBh51PH5k7SZymAi2o09c6+6aINg==
X-Received: by 2002:ac8:5f4f:: with SMTP id y15mr6923630qta.62.1628693031142;
        Wed, 11 Aug 2021 07:43:51 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id i123sm13101694qkf.60.2021.08.11.07.43.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Aug 2021 07:43:50 -0700 (PDT)
Message-ID: <6113E225.50800@gmail.com>
Date: Wed, 11 Aug 2021 10:43:49 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Atreides <maud.dib1984@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net> <E0638E2A-C2D8-4258-A334-001D11E67F7F@gmail.com> <CAGNhwTOCg=9kne-5jcW3PRGOJaov-3c+obt0didmw0PQmVA=TQ@mail.gmail.com> <CACwKM9L2b0o5aLRRVCwgcOVAa+HV_J+fhheTNbMOJJEC6J+wwQ@mail.gmail.com> <6113D9AA.3060909@gmail.com> <CACwKM9+E4=q-UHCF6YxCxd+noszB+eHrkErc0_42x2Fs76A03w@mail.gmail.com> <6113E069.1090300@gmail.com> <CACwKM9KX4g_XpCtP8YRjYZucuinyNosJoH6e_KRukf=c3wpxng@mail.gmail.com>
In-Reply-To: <CACwKM9KX4g_XpCtP8YRjYZucuinyNosJoH6e_KRukf=c3wpxng@mail.gmail.com>
Message-ID-Hash: CSCSJFNPETFSUNZE4I7LWDV5IRTLCIHT
X-Message-ID-Hash: CSCSJFNPETFSUNZE4I7LWDV5IRTLCIHT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CSCSJFNPETFSUNZE4I7LWDV5IRTLCIHT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7719085643348725755=="

This is a multi-part message in MIME format.
--===============7719085643348725755==
Content-Type: multipart/alternative;
 boundary="------------080307060605000003070703"

This is a multi-part message in MIME format.
--------------080307060605000003070703
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/11/2021 10:42 AM, Paul Atreides wrote:
> right on. thanks marcus.
> i'm going to try a regular source build instead of pybombs and see if 
> that fixes it (he said for the 200th time in his career).
> i just wanted 2 dev environments for gnuradio and that worked really 
> well for 3.7/3.8. if you have any suggestions i'm open to that.
>
> i'll keep you guys posted and thanks again for helping.
Pybombs tries to optimize things by not compiling stuff you already 
have, and maybe this is the cause of the confusion?


>
>
> On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 08/11/2021 10:20 AM, Paul Atreides wrote:
>>     right. i tried 4.1 first, then master then rolled back to 4.0.
>>     they all did the same thing.
>>     according to micheal's post above the patch is applied to 4.0
>>     master. the latest UHD-4.0 rev is here
>>     <https://github.com/EttusResearch/uhd/commit/0d184ff412c2710c15c0237711ab57c5033692a2>
>>     (0d184ff)
>>     this is my output
>>     UHD_4.0.0.0-193-g0d184ff4
>>
>>
>     The patch is definitely in 4.1.0.0 and 4.1.0.1
>
>
>>
>>     On Wed, Aug 11, 2021 at 10:07 AM Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         On 08/11/2021 10:03 AM, Paul Atreides wrote:
>>>         Ok, then what else could it be? it's the identical behavior
>>>         to the report ed bug.
>>>
>>>         I have a b210 and b205mini and both produce this issue
>>>         Both have worked fine at higher sample rates in the past.
>>>
>>>         My setup is
>>>         ubuntu20.04
>>>         UHD 4.0 (via pybombs)
>>>         GNURadio 3.9 (via pybombs)
>>>
>>         This is what Michael Dickens said:
>>
>>         It was not part of the UHD 4.0.0.0 release, and has not been
>>         backported to the UHD-3.15-LTS (or prior) branch. - MLD
>>
>>         You're still running 4.0.0.0 as shown in the UHD startup
>>         header here:
>>
>>         [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>         UHD_4.0.0.0-193-g0d184ff4
>>
>>
>>
>>
>


--------------080307060605000003070703
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/11/2021 10:42 AM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CACwKM9KX4g_XpCtP8YRjYZucuinyNosJoH6e_KRukf=3Dc3wpxng@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div>right on. thanks marcus. <br>
        </div>
        <div>i'm going to try a regular source build instead of pybombs
          and see if that fixes it (he said for the 200th time in his
          career). <br>
        </div>
        <div>i just wanted 2 dev environments for gnuradio and that
          worked really well for 3.7/3.8. if you have any suggestions
          i'm open to that. <br>
        </div>
        <div><br>
        </div>
        <div>i'll keep you guys posted and thanks again for helping. <br>
        </div>
      </div>
    </blockquote>
    Pybombs tries to optimize things by not compiling stuff you already
    have, and maybe this is the cause of the confusion?<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CACwKM9KX4g_XpCtP8YRjYZucuinyNosJoH6e_KRukf=3Dc3wpxng@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 10:=
36
          AM Marcus D. Leech &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 08/11/2021 10:20 AM, Paul Atreides wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">right. i tried 4.1 first, then master then
                rolled back to 4.0. they all did the same thing.<br>
                <div>according to micheal's post above the patch is
                  applied to 4.0 master. the latest UHD-4.0 rev is <a
                    moz-do-not-send=3D"true"
href=3D"https://github.com/EttusResearch/uhd/commit/0d184ff412c2710c15c02=
37711ab57c5033692a2"
                    target=3D"_blank">here</a> (0d184ff)</div>
                <div>this is my output<br>
                </div>
                <div>UHD_4.0.0.0-193-g0d184ff4</div>
                <div><br>
                </div>
                <div><br>
                </div>
              </div>
            </blockquote>
            The patch is definitely in 4.1.0.0 and 4.1.0.1<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 202=
1
                  at 10:07 AM Marcus D. Leech &lt;<a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <div>On 08/11/2021 10:03 AM, Paul Atreides wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div dir=3D"auto">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">Ok, then what else could it
                              be? it's the identical behavior to the
                              report ed bug.<br>
                              <br>
                              <div><span style=3D"color:rgb(0,0,0)">I hav=
e
                                  a b210 and b205mini and both produce
                                  this issue=C2=A0</span>
                                <div style=3D"color:rgb(0,0,0)">Both have
                                  worked fine at higher sample rates in
                                  the past.=C2=A0</div>
                              </div>
                              <div style=3D"color:rgb(0,0,0)"><br>
                              </div>
                              <div>My setup is=C2=A0</div>
                              <div>ubuntu20.04</div>
                              <div>UHD 4.0 (via pybombs)</div>
                              <div>GNURadio 3.9 (via pybombs)</div>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                    This is what Michael Dickens said:<br>
                    <br>
                    It was not part of the UHD 4.0.0.0 release, and has
                    not been backported to the UHD-3.15-LTS (or prior)
                    branch. - MLD<br>
                    <div><br>
                      You're still running 4.0.0.0 as shown in the UHD
                      startup header here:<br>
                      <br>
                      [INFO] [UHD] linux; GNU C++ version 9.3.0;
                      Boost_107100; UHD_4.0.0.0-193-g0d184ff4<br>
                      <br>
                      <br>
                      <br>
                    </div>
                    <br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080307060605000003070703--

--===============7719085643348725755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7719085643348725755==--
