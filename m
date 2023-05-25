Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB2C710D3B
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 15:30:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3AD5384736
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 09:30:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685021440; bh=pTAmkSSLD2VMJqWRt0w1YzPJ6d1Ofz9xdNKUGt+62mA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=J1xnHbDhEYZuZc3TLj3KtuuNoR28QUd8Loq+xSOFH/IHuYwELvtry3uhkwEpQfh4F
	 s4Q4lKMgIa6aK8lNMm30ykrzxNTba01TSeE/stmVFdn5uofeA0IBMvmHJP64u7Qw24
	 6t4Pw1i/H8TN1+ohJ3sTFAr1mdzlBfSqliJAY0+1b1PP9M032MgVEcP5EOoj7joTvo
	 YLLo+Ojg0Sf7iV8KD8Z4FbE6FcZ+kwT2zrx+TMe4cVs0oMFZ8JfYxB0W4c2GUdZcGc
	 XjBDaEXq26xt1RIW7Ipa3k49p099dLptdAoLYGR/flKQdYolOK0Ualc8cE5GbWdQ+8
	 IfUo6ayElRxgQ==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A7F3384667
	for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 09:29:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jr0YI/Ub";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-75ca95cd9b1so18681885a.0
        for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 06:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685021377; x=1687613377;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jjp6REVkzY7JsOhZW9/PjnhI7VWt6NRh6r/prZL/bRQ=;
        b=Jr0YI/UbpAJXoyclaQgMx5mPRlbWVtRCTRFRkp+B+cOXHnpeD4XQZSKrPjTdpbIvKN
         R2FnG3gFz3XH430GNZzQOZJyx9UUv14e2PHra50Y91kasWnyEQrPp9LHSgfVYJ7sN93w
         UG3SE8hqDX+J5Zl3+8e/+ZnE7LNSx0umwEqLg5uUgJLPak8Fpuc+GuaDa+H9QcnRi0PA
         1y+C4bdIVDO0HRVOoJ/wnpxPv77YEPW1kdxDmGNqPvVIIh7OzvYGu2z9hwvLzb5aQ5jc
         gRUN1XugFah0WbwbBBBQcKmQ7YAxVBGffjzu2Vx9uDXOcdXP5Be6bj3QcXmcK/MQwO0K
         Nk8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685021377; x=1687613377;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jjp6REVkzY7JsOhZW9/PjnhI7VWt6NRh6r/prZL/bRQ=;
        b=jr8umfGHVAFPuZaFJI+UPynsGp/5/VMvoeMaHmhrKoY+/KJ/QbuDjcEDHObEWky7Xm
         0lDSJ7M0MrbTPezzX7/h0ddbaI7+C41B8A3BLGhr8I7UUUCFNT92knZBET8dIVGSDR4d
         jkKl8p1SETLQJqqIVqlspsQYJn8IxwJzEH7I7MMwBoFThrbPZOZL3lEwAPcKJUGTc0dF
         WyAmgFp4JtGr0redSF1dfngwFw0qWztVOpr9gmF63F1LQOZpKltsYV3L0KX3TzpxeLWt
         QaRMckAGkIWuSjIiHP1G0+awkpOaiN4QISc3wbnNwWgJHRupDdS/ztE+f0EKZRpgyrLQ
         ne+g==
X-Gm-Message-State: AC+VfDxwK/xbjdpSWxrPrmSXBVTn2pVHgtZ/uM++3B5bbvomv2uF7WHx
	sZGi9/2OxtAUhVyXSnb2MJE=
X-Google-Smtp-Source: ACHHUZ4LuwYOqo3hos+7XDaLXxn2YHE9iqr63N/G1eX39WdFKxkEUk3+7xcmWNAixTkaj23h7IarQA==
X-Received: by 2002:a37:797:0:b0:75b:23a1:364d with SMTP id 145-20020a370797000000b0075b23a1364dmr10157018qkh.14.1685021377462;
        Thu, 25 May 2023 06:29:37 -0700 (PDT)
Received: from [192.168.2.134] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id c23-20020a05620a11b700b00759391e7f7asm381773qkk.90.2023.05.25.06.29.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 May 2023 06:29:37 -0700 (PDT)
Message-ID: <463f2c20-7002-f098-1759-05b2d1dd41b1@gmail.com>
Date: Thu, 25 May 2023 09:29:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Michael Toussaint <mtoussaint@chaosinc.com>, Rob Kossler <rkossler@nd.edu>
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com>
 <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
 <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
Message-ID-Hash: DZCCXNXTUU7LLQXMA72NDI5P7AAUM67A
X-Message-ID-Hash: DZCCXNXTUU7LLQXMA72NDI5P7AAUM67A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZCCXNXTUU7LLQXMA72NDI5P7AAUM67A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4009799422879809037=="

This is a multi-part message in MIME format.
--===============4009799422879809037==
Content-Type: multipart/alternative;
 boundary="------------GctN6Tr91lTEFqE3mL1eRmKu"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GctN6Tr91lTEFqE3mL1eRmKu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/05/2023 03:53, Michael Toussaint wrote:
> Used a single streamer and saw the delay slightly improve to between=20
> 2.5 - 3 ns.
>
> Any other suggestions to improve the delay to match the results from=20
> the knowledge base, https://kb.ettus.com/USRP_N320/N321_LO_Distribution=
?
>
> Also, what is synchronized mode and how can I make=C2=A0sure that I am=20
> running in synchronized mode?
>
> Thanks for your help,
>
> Michael
Could you share how you're setting up LO sharing in your code, as well=20
as how you're setting the system clock on the N321?


>
> On Wed, May 17, 2023 at 6:26=E2=80=AFAM Rob Kossler via USRP-users=20
> <usrp-users@lists.ettus.com> wrote:
>
>     On Tue, May 16, 2023 at 8:35=E2=80=AFPM Marcus D. Leech
>     <patchvonbraun@gmail.com> wrote:
>     >
>     > On 16/05/2023 20:31, Michael Toussaint wrote:
>     > > Hi,
>     > >
>     > > I am testing the LO synching on a single N321 using the 2 Tx
>     channels
>     > > on the N321.
>     > >
>     > > I have followed the LO setup steps from the knowledge base,
>     > > https://kb.ettus.com/USRP_N320/N321_LO_Distribution, to
>     distribute the
>     > > LO. (Sample Python code used for setup below)
>     > >
>     > > I am using separate streamers for each Tx channel and noticing
>     a delay
>     > > between the 2 channels executing.
>     > Yeah, using separate streamers, the code doesn't attempt
>     synchronization
>     > across two streamers.=C2=A0 You'll need a single
>     >=C2=A0 =C2=A0 two-channel streamer--that's the "synchronization pa=
radigm"
>     that has
>     > been in UHD for over a decade...
>
>     Separate streamers shouldn't be a problem. I use them regularly in
>     synchronized mode.=C2=A0 If both streamers have the same time spec,=
 the
>     radio should start them both in sync. That said, it won't hurt to t=
est
>     with a single streamer.
>
>     > > The Tx channels do not appear to be synchronized, we're measuri=
ng
>     > > anywhere from 0.5ns to 4ns of delay across the channels.
>
>     The master clock cycle on the N321 is between 4 and 5 ns. This is
>     also the D/A (and A/D) clock cycle.=C2=A0 When you are seeing a rel=
ative
>     delay of 0.5ns this is about one tenth of a D/A sample interval.=C2=
=A0 Or,
>     from another perspective, this represents a difference of about 4
>     inches of cable length (if the relative delay had an analog cause).
>     So, the channels are definitely synchronized to some degree - I don=
't
>     have a guess at why the synchronization is not tighter.
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> --=20
>
> Chaos Industries
>
> Michael Toussaint
> Principal Software Engineer
>
> mtoussaint@chaosinc.com
>

--------------GctN6Tr91lTEFqE3mL1eRmKu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/05/2023 03:53, Michael Toussaint
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Used a single streamer and saw the delay slightly
        improve to between 2.5 - 3 ns.
        <div><br>
        </div>
        <div>Any other suggestions to improve the delay to match the
          results from the knowledge base,=C2=A0<a
            href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribution"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/USRP_N32=
0/N321_LO_Distribution</a>?</div>
        <div><br>
        </div>
        <div>Also, what is synchronized mode and how can I make=C2=A0sure
          that I am running in synchronized mode?</div>
        <div><br>
        </div>
        <div>Thanks for your help,</div>
        <div><br>
        </div>
        <div>Michael</div>
      </div>
    </blockquote>
    Could you share how you're setting up LO sharing in your code, as
    well as how you're setting the system clock on the N321?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 17, 2023 at
          6:26=E2=80=AFAM Rob Kossler via USRP-users &lt;<a
            href=3D"mailto:usrp-users@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          Tue, May 16, 2023 at 8:35=E2=80=AFPM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
          &gt;<br>
          &gt; On 16/05/2023 20:31, Michael Toussaint wrote:<br>
          &gt; &gt; Hi,<br>
          &gt; &gt;<br>
          &gt; &gt; I am testing the LO synching on a single N321 using
          the 2 Tx channels<br>
          &gt; &gt; on the N321.<br>
          &gt; &gt;<br>
          &gt; &gt; I have followed the LO setup steps from the
          knowledge base,<br>
          &gt; &gt; <a
            href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribution"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/USRP_N32=
0/N321_LO_Distribution</a>,
          to distribute the<br>
          &gt; &gt; LO. (Sample Python code used for setup below)<br>
          &gt; &gt;<br>
          &gt; &gt; I am using separate streamers for each Tx channel
          and noticing a delay<br>
          &gt; &gt; between the 2 channels executing.<br>
          &gt; Yeah, using separate streamers, the code doesn't attempt
          synchronization<br>
          &gt; across two streamers.=C2=A0 You'll need a single<br>
          &gt;=C2=A0 =C2=A0 two-channel streamer--that's the "synchroniza=
tion
          paradigm" that has<br>
          &gt; been in UHD for over a decade...<br>
          <br>
          Separate streamers shouldn't be a problem. I use them
          regularly in<br>
          synchronized mode.=C2=A0 If both streamers have the same time s=
pec,
          the<br>
          radio should start them both in sync. That said, it won't hurt
          to test<br>
          with a single streamer.<br>
          <br>
          &gt; &gt; The Tx channels do not appear to be synchronized,
          we're measuring<br>
          &gt; &gt; anywhere from 0.5ns to 4ns of delay across the
          channels.<br>
          <br>
          The master clock cycle on the N321 is between 4 and 5 ns.=C2=A0
          This is<br>
          also the D/A (and A/D) clock cycle.=C2=A0 When you are seeing a
          relative<br>
          delay of 0.5ns this is about one tenth of a D/A sample
          interval.=C2=A0 Or,<br>
          from another perspective, this represents a difference of
          about 4<br>
          inches of cable length (if the relative delay had an analog
          cause).<br>
          So, the channels are definitely synchronized to some degree -
          I don't<br>
          have a guess at why the synchronization is not tighter.<br>
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
      <br clear=3D"all">
      <div><br>
      </div>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr"><br>
          <div>
            <table
style=3D"border-collapse:collapse;font-family:Helvetica,Arial,sans-serif;=
line-height:1.15;color:rgb(0,0,0)"
              cellspacing=3D"0" cellpadding=3D"0">
              <tbody>
                <tr>
                  <td>
                    <table style=3D"border-collapse:collapse;width:391px"
                      width=3D"100%" cellspacing=3D"0" cellpadding=3D"0">
                      <tbody>
                        <tr>
                          <td style=3D"vertical-align:top;padding:0.01px
                            0.01px 14px 1px;width:110px"><img alt=3D"Chao=
s
                              Industries"
                              src=3D"https://chaosinc.com/img/chaos_logo_=
email@2x.png"
                              style=3D"width: 110px; max-width: 110px;
                              vertical-align: middle; border-radius:
                              0px; height: 18px;" moz-do-not-send=3D"true=
"
                              width=3D"110" height=3D"18" border=3D"0"></=
td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style=3D"line-height:1.2;white-space:nowrap"
                    nowrap=3D"nowrap"><span
style=3D"text-transform:initial;letter-spacing:0px;line-height:1.2;font-s=
ize:16px">Michael
                      Toussaint</span><br>
                    <span style=3D"font-size:12px">Principal Software
                      Engineer</span></td>
                </tr>
                <tr>
                  <td>
                    <table style=3D"border-collapse:collapse"
                      cellspacing=3D"0" cellpadding=3D"0">
                      <tbody>
                        <tr>
                          <td style=3D"vertical-align:top">
                            <table
                              style=3D"border-collapse:collapse;line-heig=
ht:1.2"
                              cellspacing=3D"0" cellpadding=3D"0">
                              <tbody>
                                <tr>
                                  <td
style=3D"padding-top:14px;white-space:nowrap;width:391px;font-family:Helv=
etica,Arial"
                                    width=3D"391" nowrap=3D"nowrap">
                                    <p
                                      style=3D"margin:0.1px;line-height:1=
"><span
                                        style=3D"font-size:12px"><a
                                          rel=3D"nofollow noreferrer"
                                          style=3D"font-family:Helvetica,=
Arial,sans-serif;text-decoration:unset"
                                          moz-do-not-send=3D"true"><span
                                            style=3D"line-height:1.2">mto=
ussaint@chaosinc.com</span></a></span></p>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------GctN6Tr91lTEFqE3mL1eRmKu--

--===============4009799422879809037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4009799422879809037==--
