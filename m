Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5EF42ACBB
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 20:57:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41406385029
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 14:57:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="abLVdtjq";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 27356383E98
	for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 14:56:38 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id i1so317826qtr.6
        for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 11:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=yXwCz3F1YPeWv3o6vV5BKKBvx9p8NTbaee3oeDyZs5E=;
        b=abLVdtjq8+nkghNtOpFi2UNQgfoS8y/T6HbLvt2xHzCmrFanV7L5CGblkxMp/7FQ9Z
         8Ij88ehdOxhQdBTPCsjcJr54r7QBJdtIqcoyfT0f21E/9EhZR1etWmQkSWSFnMCnAdDZ
         fHz0uSPKhKP4JRJOfj44tBfvfmpESmUx50Y5hcWVESiqPJjFwRKnTvr5tMI89Ehg6h28
         m73Fax7tC3jD09LNYMCCBnh0qNSOE7TN0cOev+cujCMoKQm6kWEO6Pag+rqrQ1ON5Yhu
         aYcBBEZL6S5dGvTchck9m30dkl8ZBzdu2jiZwWMH0tG9vc79SUX/Iq+q1bL/A+PMgxsM
         sJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=yXwCz3F1YPeWv3o6vV5BKKBvx9p8NTbaee3oeDyZs5E=;
        b=FUDosXcSs4PaiHO/az3kJsIcrV0btNBGF/bxcMxCj4P+MRTnXuJFixNbh0PV3stoHC
         vB6tnGmIjA9rY1cDn1WfeCR4IE0SbB0q93i7wjdeMzbY4+BZZ/YbEnQt6ewa0yprHuUj
         l7c+qJWYfUvxiPsTXVrELXgzH242MTE1cQyvvPGshDGJfKKsXJmOx0aL49vdaZnVH+1L
         vY+lOKSGdvNSZOWOMVH+0Ne8vEM8BqXPY/ddqQjWTp+xrKelNYcPXrHS68wNeOERekno
         2tkCMwW+BSEAwPwXP9+s+OwCnZzUiRFuSaD5Vn6CuiXWLwz5vYcvnzwh4KGGkzl6VJXc
         Xk8w==
X-Gm-Message-State: AOAM532H146NZ4W/zBDHrropYSkxzUdAyjF0QOtC0POMPKO1SPQv8nw/
	FrDMzgLd/Z6KczpNamJLQdfZ8U4IylE=
X-Google-Smtp-Source: ABdhPJzwTekeKnFrhj9pcL8/NxC0blbrKIb1ETk+3p3H5aIqQFAgqFRc6WF+6VBJZ9ED+Tr3OsU2jA==
X-Received: by 2002:a05:622a:24a:: with SMTP id c10mr3377183qtx.289.1634064997497;
        Tue, 12 Oct 2021 11:56:37 -0700 (PDT)
Received: from [192.168.2.234] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id x125sm6232902qkd.8.2021.10.12.11.56.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Oct 2021 11:56:37 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>
References: <1552911735.1055946.1634056580695@mail.yahoo.com>
 <85AEED2D-0B70-47B9-9DE5-696466F4A310@gmail.com>
 <279084312.1067344.1634061310152@mail.yahoo.com>
 <2012533350.1050943.1634062837483@mail.yahoo.com>
 <afc23cc1-6024-9591-afaf-745b50327ce2@gmail.com>
 <672425144.1077012.1634064314721@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <a6249e84-4181-335b-ae52-fb638b291f33@gmail.com>
Date: Tue, 12 Oct 2021 14:56:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <672425144.1077012.1634064314721@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: BHCGFMJYGQCFANM7T3YPDJHBKNAVNB7P
X-Message-ID-Hash: BHCGFMJYGQCFANM7T3YPDJHBKNAVNB7P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philip Balister <philip@balister.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BHCGFMJYGQCFANM7T3YPDJHBKNAVNB7P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4730568054813499690=="

This is a multi-part message in MIME format.
--===============4730568054813499690==
Content-Type: multipart/alternative;
 boundary="------------CD64881C00C76D7FEE9B03D6"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CD64881C00C76D7FEE9B03D6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-12 2:45 p.m., Tellrell White wrote:
> 5918 root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 2208 S=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 grep usrp
>
> On Tuesday, October 12, 2021, 02:38:36 PM EDT, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2021-10-12 2:20 p.m., Tellrell White wrote:
> Out of curiosity, when running "systemctl status usrp-hwd" I get a=20
> message stating "vendor preset=3Denabled". Is there anyway possible tha=
t=20
> mpm is still being started at bootup?
>
> On
>
> What does
>
> ps |grep usrp
>
> Yield?
>
>
>
OK, so it isn't usrp-hwd that is "holding" it.

That chip on the DB controls signals like "PWRGOOD", it's possible that=20
the FPGA itself is logically "holding" that interface, but that's just
 =C2=A0 total speculation on my part.=C2=A0=C2=A0 If the "lsof" utility w=
ere installed,=20
it would be easy to see if some app-layer process had it open.=C2=A0 But =
this
 =C2=A0 system image doesn't include "lsof".



--------------CD64881C00C76D7FEE9B03D6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-12 2:45 p.m., Tellrell Whit=
e
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:672425144.1077012.1634064314721@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp9e6c6f52yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false">5918 root=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2208
          S=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 grep usrp<br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"yahoo_quoted_5024334566" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, October 12, 2021, 02:38:36 PM EDT, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"yiv6628324684">
              <div>
                <div class=3D"yiv6628324684yqt9819641612"
                  id=3D"yiv6628324684yqtfd12258">
                  <div class=3D"yiv6628324684moz-cite-prefix">On
                    2021-10-12 2:20 p.m., Tellrell White wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
              </div>
              <div>
                <div class=3D"yiv6628324684yqt9819641612"
                  id=3D"yiv6628324684yqtfd45707">
                  <div class=3D"yiv6628324684ydpee2354d5yahoo-style-wrap"
                    style=3D"font-family:Helvetica Neue, Helvetica, Arial=
,
                    sans-serif;font-size:13px;">
                    <div dir=3D"ltr">Out of curiosity, when running
                      "systemctl status usrp-hwd" I get a message
                      stating "vendor preset=3Denabled". Is there anyway
                      possible that mpm is still being started at
                      bootup? <br clear=3D"none">
                    </div>
                    <div><br clear=3D"none">
                    </div>
                  </div>
                </div>
                <div class=3D"yiv6628324684yahoo_quoted"
                  id=3D"yiv6628324684yahoo_quoted_4922596405">
                  <div class=3D"yiv6628324684yqt9819641612"
                    id=3D"yiv6628324684yqtfd28951"> </div>
                  <div style=3D"font-family:'Helvetica Neue', Helvetica,
                    Arial, sans-serif;font-size:13px;color:#26282a;">
                    <div class=3D"yiv6628324684yqt9819641612"
                      id=3D"yiv6628324684yqtfd83448"> </div>
                    <div>
                      <div class=3D"yiv6628324684yqt9819641612"
                        id=3D"yiv6628324684yqtfd89395"> On</div>
                      <br clear=3D"none">
                    </div>
                  </div>
                </div>
                What does<br clear=3D"none">
                <br clear=3D"none">
                ps |grep usrp<br clear=3D"none">
                <br clear=3D"none">
                Yield?
                <div class=3D"yiv6628324684yqt9819641612"
                  id=3D"yiv6628324684yqtfd98015"><br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    OK, so it isn't usrp-hwd that is "holding" it.<br>
    <br>
    That chip on the DB controls signals like "PWRGOOD", it's possible
    that the FPGA itself is logically "holding" that interface, but
    that's just<br>
    =C2=A0 total speculation on my part.=C2=A0=C2=A0 If the "lsof" utilit=
y were
    installed, it would be easy to see if some app-layer process had it
    open.=C2=A0 But this<br>
    =C2=A0 system image doesn't include "lsof".<br>
    <br>
    <br>
  </body>
</html>

--------------CD64881C00C76D7FEE9B03D6--

--===============4730568054813499690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4730568054813499690==--
