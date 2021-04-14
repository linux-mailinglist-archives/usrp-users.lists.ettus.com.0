Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CC535EBA7
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 06:10:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E0913846C5
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 00:10:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="s1B5w4co";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D2303845BB
	for <USRP-users@lists.ettus.com>; Wed, 14 Apr 2021 00:10:03 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id x11so20186742qkp.11
        for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 21:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=f6XtGjH2kdavcae9NrSiUC8OcRAPIFlCxs3aGln3WL0=;
        b=s1B5w4co/cRr+LS54KJ8Dgv7CaK32xJw+XoxxHT/oyf9e0HLucPU55s8+TfeQ/5BpQ
         1mPXTu+06lj9PWt5S3Q7zHO3KjKkwotL5gHwm+WD33i0D76z0XJj1X0BMb3VUanUEZpM
         nYYnG1G7kictmQIQsOavssG5gnu9k2nWsZRPyFemq9r7S89+ROuTW4j2j3m0+tAq4gkv
         h4iqxd/W8uTil789bP4ESXjdF5AHFu/njL1dCA+JzH5HnnQbm9TSjYb9Tm3nWZIVUaUa
         xbxjjfbSk8Ys5MKcKB4ARZf1St2WipyDSakqZ+FyJaF32ZbB8eHEr4TjufLgjlVyG+AT
         aJ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=f6XtGjH2kdavcae9NrSiUC8OcRAPIFlCxs3aGln3WL0=;
        b=G71D3NhZFS22DJ7ILcu2McYCWtV7b8uyvng95kJxU11sRhBro5QlTb8nRqV0jGP164
         7fC8o/fdsQv5fr1mju5XgJ1I0fuzleIx4mrQimTWMloiCAgOJRUG56WmPxJwBgXhMpPm
         anug60MB7ECSt4sUsrxsyiW8EsdMdmJ9NKww3M4tPMOd/IIwfYt6osjVkZqYkasXK+8n
         o1TcqsnmJLL8n313s8qa7EnNCgAiv7dcUFgqKQV/Nox+FUxDFOsbdw1t30wGDZFmULs4
         7RkgTKOC4fju6o4IxMjGv243smRN+yho9sqdxhWpyh5Kmv4W3fTXlfo0IR+OWdzfSr23
         rguA==
X-Gm-Message-State: AOAM530gVz+S2EdpC8Wc6xfoc0Zi5Tnn2jzmx7olZBBGcrF9VM9sIGGk
	TjuLm5dxHh4ONSZ2noIre3ZObRACO79SsQ==
X-Google-Smtp-Source: ABdhPJyudNtyZWxikBtGcOcFOPhCdSVBVaNGfqKfSVctUXkYiC/h7xPfmzHMD68RlHxS+VS3xL9VMg==
X-Received: by 2002:a37:a993:: with SMTP id s141mr8670346qke.265.1618373396512;
        Tue, 13 Apr 2021 21:09:56 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id u9sm10328265qtf.76.2021.04.13.21.09.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 21:09:56 -0700 (PDT)
Message-ID: <60766B12.6020007@gmail.com>
Date: Wed, 14 Apr 2021 00:09:54 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
References: <CALNMZ8Uu4aAWWfPOEWXE3YRRYrsd-U5dGGUecY=sJQAXc9tD5g@mail.gmail.com> <87BD99F9-C3E1-4F43-91AD-C3F034526CA3@gmail.com> <CALNMZ8VKM7cjRnAARFEo+1bnmNq7pZPFZ22wPbQ_g7_xLdLMAg@mail.gmail.com>
In-Reply-To: <CALNMZ8VKM7cjRnAARFEo+1bnmNq7pZPFZ22wPbQ_g7_xLdLMAg@mail.gmail.com>
Message-ID-Hash: LKZ5XJCEM4EYMRIMWHHPNIEGKOY4DP2D
X-Message-ID-Hash: LKZ5XJCEM4EYMRIMWHHPNIEGKOY4DP2D
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Contradictory overflow messages when recording rx samples with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKZ5XJCEM4EYMRIMWHHPNIEGKOY4DP2D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2029247541686277598=="

This is a multi-part message in MIME format.
--===============2029247541686277598==
Content-Type: multipart/alternative;
 boundary="------------040207000204050308060402"

This is a multi-part message in MIME format.
--------------040207000204050308060402
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/13/2021 11:23 PM, Brendan Horsfield wrote:
> Fair enough.  To ensure that this problem is logged with the Ettus=20
> engineering team, is there an official mailing list or email address=20
> that I should report this bug to?
You can put an issue in the GitHub repository:

https://github.com/EttusResearch/uhd/issues

This is UHD4.0?  So this may be a pybind11 issue with it correctly=20
packaging the metadata from the C++ layer.


>
> On Wed, Apr 14, 2021 at 12:02 PM Marcus D Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     That just sounds like a bug. The Python API is still considered
>     experimental.
>
>     Sent from my iPhone
>
>>     On Apr 13, 2021, at 9:22 PM, Brendan Horsfield
>>     <brendan.horsfield@vectalabs.com
>>     <mailto:brendan.horsfield@vectalabs.com>> wrote:
>>
>>     =EF=BB=BF
>>     Hi Marcus,
>>
>>     I have run some comparison tests between the C++ and Python
>>     versions of "benchmark_rate", using a high sampling rate in order
>>     to force some overruns.
>>
>>     It appears that both versions are detecting & reporting overrun
>>     events correctly.  However, when it comes to the number of
>>     dropped samples, the Python version always returns zero for the
>>     number of dropped samples.
>>
>>     Do you have any idea why this is the case?  Is the resolution of
>>     the timer less fine-grained in the Python implementation perhaps?
>>
>>     Thanks,
>>     Brendan.
>>
>>
>>
>>     On Tue, Apr 13, 2021 at 11:05 PM Marcus D Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>
>>
>>         Sent from my iPhone
>>
>>>         On Apr 13, 2021, at 3:05 AM, brendan.horsfield@vectalabs.com
>>>         <mailto:brendan.horsfield@vectalabs.com> wrote:
>>>
>>>         =EF=BB=BF
>>>
>>>         Hi All,
>>>
>>>         I am using a Python script to capture a short burst of rx
>>>         samples from my B210. The script is based heavily on the
>>>         Ettus example =E2=80=9Cbenchmark_rate.py=E2=80=9D, with a cou=
ple of
>>>         additional tweaks I took from the Ettus GitHub repo
>>>         (https://github.com/EttusResearch/uhd/blob/master/host/python=
/uhd/usrp/multi_usrp.py).
>>>
>>>         In my script I am calling my rx sampling function repeatedly
>>>         using a =E2=80=9Cfor" loop. Any errors that occur during samp=
ling
>>>         are stored in a uhd.types.RXMetadata() object, just like in
>>>         the original Ettus script.
>>>
>>>         Here=E2=80=99s the strange part:
>>>
>>>         While the script is running, the letter =E2=80=98O=E2=80=99 i=
s printed on
>>>         the screen about 50% of the time, which I believe is an
>>>         overflow warning from the Fastpath logger. However, the
>>>         number of errors being detected by the RXMetadata() object
>>>         is almost zero. How can this be?
>>>
>>>         Some questions:
>>>
>>>          *
>>>
>>>             How seriously should I take the Fastpath =E2=80=98O=E2=80=
=99 warning?
>>>             What does it actually mean? Does it mean that this burst
>>>             of samples will be corrupted/incomplete?
>>>
>>         It absolutely means that samples were lost.
>>
>>         The metadata should include time stamps that will allow you
>>         to compute how much was lost.
>>         https://github.com/EttusResearch/uhd/issues
>>>
>>>          *
>>>
>>>             Why is the RXMetadata object not returning an error
>>>             every single time that the Fastpath logger does?
>>>
>>         This I=E2=80=99m not certain of.
>>>
>>>         Thanks,
>>>
>>>         Brendan.
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>
>>>         To unsubscribe send an email to
>>>         usrp-users-leave@lists.ettus.com
>>>         <mailto:usrp-users-leave@lists.ettus.com>
>>


--------------040207000204050308060402
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/13/2021 11:23 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CALNMZ8VKM7cjRnAARFEo+1bnmNq7pZPFZ22wPbQ_g7_xLdLMAg@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">Fair enough.=C2=A0 To ensure that this problem is =
logged
        with=C2=A0the Ettus engineering team, is there an official mailin=
g
        list or email address that I should report this bug to? <br>
      </div>
    </blockquote>
    You can put an issue in the GitHub repository:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/EttusRe=
search/uhd/issues">https://github.com/EttusResearch/uhd/issues</a><br>
    <br>
    This is UHD4.0?=C2=A0 So this may be a pybind11 issue with it correct=
ly
    packaging the metadata from the C++ layer.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CALNMZ8VKM7cjRnAARFEo+1bnmNq7pZPFZ22wPbQ_g7_xLdLMAg@mail.gmai=
l.com"
      type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 14, 2021 at 12:=
02
          PM Marcus D Leech &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">That just sounds like a bug. The Python API i=
s
            still considered experimental.=C2=A0<br>
            <br>
            <div dir=3D"ltr">Sent from my iPhone</div>
            <div dir=3D"ltr"><br>
              <blockquote type=3D"cite">On Apr 13, 2021, at 9:22 PM,
                Brendan Horsfield &lt;<a moz-do-not-send=3D"true"
                  href=3D"mailto:brendan.horsfield@vectalabs.com"
                  target=3D"_blank">brendan.horsfield@vectalabs.com</a>&g=
t;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">=EF=BB=BF
                <div dir=3D"ltr">Hi Marcus,
                  <div><br>
                  </div>
                  <div>I have run some comparison=C2=A0tests between the =
C++
                    and Python versions of "benchmark_rate", using a
                    high sampling rate in order to force some overruns.</=
div>
                  <div><br>
                  </div>
                  <div>It appears that both versions are detecting &amp;
                    reporting overrun events correctly.=C2=A0 However, wh=
en
                    it comes to the number of dropped samples, the
                    Python version always returns zero for the number of
                    dropped samples.</div>
                  <div><br>
                  </div>
                  <div>Do you have=C2=A0any idea why this is the case?=C2=
=A0 Is
                    the resolution of the timer less fine-grained in the
                    Python implementation perhaps?</div>
                  <div><br>
                  </div>
                  <div>Thanks,</div>
                  <div>Brendan.</div>
                  <div><br>
                  </div>
                  <div><br>
                  </div>
                  <div>=C2=A0=C2=A0</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 13, 2=
021
                    at 11:05 PM Marcus D Leech &lt;<a
                      moz-do-not-send=3D"true"
                      href=3D"mailto:patchvonbraun@gmail.com"
                      target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"auto"><br>
                      <br>
                      <div dir=3D"ltr">Sent from my iPhone</div>
                      <div dir=3D"ltr"><br>
                        <blockquote type=3D"cite">On Apr 13, 2021, at 3:0=
5
                          AM, <a moz-do-not-send=3D"true"
                            href=3D"mailto:brendan.horsfield@vectalabs.co=
m"
                            target=3D"_blank">brendan.horsfield@vectalabs=
.com</a>
                          wrote:<br>
                          <br>
                        </blockquote>
                      </div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">=EF=BB=BF
                          <p>Hi All,</p>
                          <p>I am using a Python script to capture a
                            short burst of rx samples from my B210. The
                            script is based heavily on the Ettus example
                            =E2=80=9Cbenchmark_rate.py=E2=80=9D, with a c=
ouple of
                            additional tweaks I took from the Ettus
                            GitHub repo (<a moz-do-not-send=3D"true"
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/=
usrp/multi_usrp.py"
                              target=3D"_blank">https://github.com/EttusR=
esearch/uhd/blob/master/host/python/uhd/usrp/multi_usrp.py</a>).</p>
                          <p>In my script I am calling my rx sampling
                            function repeatedly using a =E2=80=9Cfor" loo=
p. Any
                            errors that occur during sampling are stored
                            in a uhd.types.RXMetadata() object, just
                            like in the original Ettus script. </p>
                          <p>Here=E2=80=99s the strange part:</p>
                          <p>While the script is running, the letter =E2=80=
=98O=E2=80=99
                            is printed on the screen about 50% of the
                            time, which I believe is an overflow warning
                            from the Fastpath logger. However, the
                            number of errors being detected by the
                            RXMetadata() object is almost zero. How can
                            this be?</p>
                          <p>Some questions:</p>
                          <ul>
                            <li>
                              <p>How seriously should I take the
                                Fastpath =E2=80=98O=E2=80=99 warning? Wha=
t does it
                                actually mean? Does it mean that this
                                burst of samples will be
                                corrupted/incomplete?</p>
                            </li>
                          </ul>
                        </div>
                      </blockquote>
                      It absolutely means that samples were lost.=C2=A0
                      <div><br>
                      </div>
                      <div>The metadata should include time stamps that
                        will allow you to compute how much was lost.=C2=A0=
</div>
                      <div><a class=3D"moz-txt-link-freetext" href=3D"htt=
ps://github.com/EttusResearch/uhd/issues">https://github.com/EttusResearc=
h/uhd/issues</a><br>
                      </div>
                      <div>
                        <blockquote type=3D"cite">
                          <div dir=3D"ltr">
                            <ul>
                              <li>
                                <p>Why is the RXMetadata object not
                                  returning an error every single time
                                  that the Fastpath logger does? </p>
                              </li>
                            </ul>
                          </div>
                        </blockquote>
                        This I=E2=80=99m not certain of.=C2=A0<br>
                        <blockquote type=3D"cite">
                          <div dir=3D"ltr">
                            <p>Thanks, </p>
                            <p>Brendan.</p>
                            <span>_______________________________________=
________</span><br>
                            <span>USRP-users mailing list -- <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">usrp-users@lists.ettus.=
com</a></span><br>
                            <span>To unsubscribe send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank">usrp-users-leave@lists.=
ettus.com</a></span><br>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                  </blockquote>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040207000204050308060402--

--===============2029247541686277598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2029247541686277598==--
