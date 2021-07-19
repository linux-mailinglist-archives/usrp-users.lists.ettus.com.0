Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 106AB3CEE11
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 23:22:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EC3F384A7A
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 17:22:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="g8CvBMUD";
	dkim-atps=neutral
Received: from resqmta-po-07v.sys.comcast.net (resqmta-po-07v.sys.comcast.net [96.114.154.166])
	by mm2.emwd.com (Postfix) with ESMTPS id DD1703845C0
	for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 17:22:12 -0400 (EDT)
Received: from resomta-po-02v.sys.comcast.net ([96.114.154.226])
	by resqmta-po-07v.sys.comcast.net with ESMTP
	id 5aYdmDpcLiCWI5aiJmRBfH; Mon, 19 Jul 2021 21:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1626729731;
	bh=difu7ucpybGU3OQdYaO0rFw4To2UsLEyBY9bJY00CrU=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=g8CvBMUDFx6x+VeRGdFi7W6vwIXwaU4jRl+N2t0amgdBQB7GAFhhNrFvU4/GgE2/L
	 wtqggFsJqkf+55FmNQ0BrkJoWHgvcxAGIFv8QJ2SGsfnFDToI9D+iFNihsSriNDSbm
	 gDrfjLSdyDl5b0yHXhQy/s9SFxP+oXxvVWqAQCa65DxteSWsIPAzjW38kC2Z0s2zCs
	 8RFh/15qVZqQOclZNhCdhx8wa814O3NF+H9Q+MXkywnKk+JUqwWLwmuO8gZqrg/k15
	 /gBz8zsSWdqfLCXFSMBITQxCmOro8BqVpBSnnUgM6cModclVo26QpaaSdM3Py3MMGb
	 2BgzigirF+FtQ==
Received: from [IPv6:2601:647:4700:284:1cfb:2923:dd8e:573d]
 ([IPv6:2601:647:4700:284:1cfb:2923:dd8e:573d])
	by resomta-po-02v.sys.comcast.net with ESMTPSA
	id 5aiImn0KdFpbg5aiJmoT7c; Mon, 19 Jul 2021 21:22:11 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: Marcus D Leech <patchvonbraun@gmail.com>
References: <d03e8311-2313-2b68-72d1-3e6a2fa4d547@comcast.net>
 <2CF175AC-4DFF-4C28-A91E-0F4A83722014@gmail.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <3e1749da-06c9-1c6d-0c24-ffc8348e317c@comcast.net>
Date: Mon, 19 Jul 2021 14:22:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <2CF175AC-4DFF-4C28-A91E-0F4A83722014@gmail.com>
Content-Language: en-US
Message-ID-Hash: JOYOXI5AN7AXH6ZIYBY2TI3APN4AOZDM
X-Message-ID-Hash: JOYOXI5AN7AXH6ZIYBY2TI3APN4AOZDM
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is UHD supposed to keep running after detecting overrun?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JOYOXI5AN7AXH6ZIYBY2TI3APN4AOZDM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6085729313941448858=="

This is a multi-part message in MIME format.
--===============6085729313941448858==
Content-Type: multipart/alternative;
 boundary="------------BCDD2C52565FFA8B306F23E1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BCDD2C52565FFA8B306F23E1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Yes, B210 here.

Ron

On 7/19/21 2:19 PM, Marcus D Leech wrote:
> Ron is that on a B2xx or something else?
>
> Sent from my iPhone
>
>> On Jul 19, 2021, at 4:27 PM, Ron Economos <w6rz@comcast.net> wrote:
>>
>> =EF=BB=BF
>>
>> I haven't tried the latest UHD version. However, I do have UHD=20
>> 4.0.0.0 running without stopping with just the patch from=20
>> https://github.com/EttusResearch/uhd/commit/70e1f0f0c697d6522e3a87e2de=
93e34e375decb4
>>
>> Ron
>>
>> On 7/19/21 8:58 AM, wan wrote:
>>> Ron,
>>> I didnt find an open issue related to this at first, but after your=20
>>> response I found it in the closed issues=20
>>> (https://github.com/EttusResearch/uhd/issues/380=20
>>> <https://github.com/EttusResearch/uhd/issues/380>). The fix was=20
>>> committed in Oct 2020. However, I tried master=20
>>> (UHD_4.1.0.0-13-g240c7fd), v4.1.0.0 and v4.1.0.1, and I have the=20
>>> problem in all three versions. Is it working for you in any of these=20
>>> versions?
>>>
>>> Mike,
>>> Thanks for joining the discussion. I'm also seeing the=20
>>> ERROR_CODE_TIMEOUT problem with benchmark_rate. However, it usually=20
>>> happens when I set the sample rate to 50 Msps or higher, and run for=20
>>> more than 30 seconds. At 2 to 5 MSps, I dont have any errors or=20
>>> overruns. I didn't mention it before because I figured it's normal=20
>>> since I'm running at a high sample rate. However, on v3.15.0.0, I=20
>>> can consistently stream at 50 Msps without getting any timeouts or=20
>>> overruns.
>>>
>>>
>>>
>>> On Mon, 19 Jul 2021 at 11:34, McNulty, Mike (Assoc) via USRP-users=20
>>> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrot=
e:
>>>
>>>     Hello,
>>>
>>>     I don=E2=80=99t want to interrupt the thread but I actually joine=
d the
>>>     mailing list for this issue. I just upgraded to UHD 4.1.0.1 and
>>>     I=E2=80=99m experiencing the same timeout issue.
>>>
>>>     <image004.png>
>>>
>>>     This is a snip from a ./lib/uhd/examples/benchmark run at 5 Msps.
>>>
>>>     <image005.png>
>>>
>>>     It looks to me as soon as it receives the first overflow the
>>>     execution terminates.=C2=A0 Somewhere between 2.0 and 5.0 Msps my
>>>     system drops samples
>>>
>>>     <image006.png>
>>>
>>>     Thanks for everything everyone does! I wanted to just add my
>>>     experience to help with development.
>>>
>>>     Mike
>>>
>>>     *From:* Ron Economos <w6rz@comcast.net <mailto:w6rz@comcast.net>>
>>>     *Sent:* Monday, July 19, 2021 1:45 AM
>>>     *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.c=
om>
>>>     *Subject:* [USRP-users] Re: Is UHD supposed to keep running
>>>     after detecting overrun?
>>>
>>>     It is a bug in UHD v4.0.0.0, but it should be fixed in UHD
>>>     v4.1.0.1 (and UHD v4.1.0.0).
>>>
>>>     Ron
>>>
>>>     On 7/18/21 9:37 PM, wan wrote:
>>>
>>>         Hello,
>>>
>>>         When UHD detects an overrun, is it supposed to keep going or
>>>         freeze? I'm using an USRP B200mini. I tested it with the
>>>         rx_ascii_dft and the uhd_fft GRC example using different
>>>         versions of UHD on Ubuntu 20.04. When using UHD 3.15.0, an
>>>         overrun is detected, the application keeps running and
>>>         prints a sequence of "O" to the terminal. However, when I
>>>         use UHD 4.0.0.0 and 4.1.0.1, as soon as an overrun is
>>>         detected, the ascii or gnuradio QT displays stop updating.
>>>
>>>         Regards,
>>>
>>>         Wan
>>>
>>>
>>>
>>>         _______________________________________________
>>>
>>>         USRP-users mailing list --usrp-users@lists.ettus.com  <mailto=
:usrp-users@lists.ettus.com>
>>>
>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.c=
om  <mailto:usrp-users-leave@lists.ettus.com>
>>>
>>>     _______________________________________________
>>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>>     <mailto:usrp-users@lists.ettus.com>
>>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>     <mailto:usrp-users-leave@lists.ettus.com>
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------BCDD2C52565FFA8B306F23E1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Yes, B210 here.</p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/19/21 2:19 PM, Marcus D Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:2CF175AC-4DFF-4C28-A91E-0F4A83722014@gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      Ron is that on a B2xx or something else?<br>
      <br>
      <div dir=3D"ltr">Sent from my iPhone</div>
      <div dir=3D"ltr"><br>
        <blockquote type=3D"cite">On Jul 19, 2021, at 4:27 PM, Ron
          Economos <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:w6rz=
@comcast.net">&lt;w6rz@comcast.net&gt;</a> wrote:<br>
          <br>
        </blockquote>
      </div>
      <blockquote type=3D"cite">
        <div dir=3D"ltr">=EF=BB=BF
          <meta http-equiv=3D"Content-Type" content=3D"text/html;
            charset=3DUTF-8">
          <p>I haven't tried the latest UHD version. However, I do have
            UHD 4.0.0.0 running without stopping with just the patch
            from
            <a class=3D"moz-txt-link-freetext"
href=3D"https://github.com/EttusResearch/uhd/commit/70e1f0f0c697d6522e3a8=
7e2de93e34e375decb4"
              moz-do-not-send=3D"true">https://github.com/EttusResearch/u=
hd/commit/70e1f0f0c697d6522e3a87e2de93e34e375decb4</a></p>
          <p>Ron<br>
          </p>
          <div class=3D"moz-cite-prefix">On 7/19/21 8:58 AM, wan wrote:<b=
r>
          </div>
          <blockquote type=3D"cite"
cite=3D"mid:CABNzRJ=3DimMO-HNdXvOPyskT1oJ6aS7HwR9NC7EGnmOoOWph8XA@mail.gm=
ail.com">
            <meta http-equiv=3D"content-type" content=3D"text/html;
              charset=3DUTF-8">
            <div dir=3D"ltr">
              <div>
                <div>Ron,<br>
                  I didnt find an open issue related to this at first,
                  but after your response I found it in the closed
                  issues (<a
                    href=3D"https://github.com/EttusResearch/uhd/issues/3=
80"
                    target=3D"_blank" moz-do-not-send=3D"true">https://gi=
thub.com/EttusResearch/uhd/issues/380</a>).
                  The fix was committed in Oct 2020. However, I tried
                  master (UHD_4.1.0.0-13-g240c7fd), v4.1.0.0 and
                  v4.1.0.1, and I have the problem in all three
                  versions. Is it working for you in any of these
                  versions?<br>
                  <br>
                </div>
                Mike,<br>
              </div>
              Thanks for joining the discussion. I'm also seeing the
              ERROR_CODE_TIMEOUT problem with benchmark_rate. However,
              it usually happens when I set the sample rate to 50 Msps
              or higher, and run for more than 30 seconds. At 2 to 5
              MSps, I dont have any errors or overruns. I didn't mention
              it before because I figured it's normal since I'm running
              at a high sample rate. However, on v3.15.0.0, I can
              consistently stream at 50 Msps without getting any
              timeouts or overruns.<br>
              <br>
              <br>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Mon, 19 Jul 2021 a=
t
                11:34, McNulty, Mike (Assoc) via USRP-users &lt;<a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>=
&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
                  <div class=3D"gmail-m_-2842874153423426516WordSection1"=
>
                    <p class=3D"MsoNormal">Hello,</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">I don=E2=80=99t want to interr=
upt the
                      thread but I actually joined the mailing list for
                      this issue. I just upgraded to UHD 4.1.0.1 and I=E2=
=80=99m
                      experiencing the same timeout issue. </p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <div>&lt;image004.png&gt;</div>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">This is a snip from a
                      ./lib/uhd/examples/benchmark run at 5 Msps.</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <div>&lt;image005.png&gt;</div>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">It looks to me as soon as it
                      receives the first overflow the execution
                      terminates.=C2=A0 Somewhere between 2.0 and 5.0 Msp=
s my
                      system drops samples</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <div>&lt;image006.png&gt;</div>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">Thanks for everything everyone
                      does! I wanted to just add my experience to help
                      with development. </p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">Mike</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <div>
                      <div style=3D"border-color:rgb(225,225,225)
                        currentcolor currentcolor;border-style:solid
                        none none;border-width:1pt medium
                        medium;padding:3pt 0in 0in">
                        <p class=3D"MsoNormal"><b>From:</b> Ron Economos
                          &lt;<a href=3D"mailto:w6rz@comcast.net"
                            target=3D"_blank" moz-do-not-send=3D"true">w6=
rz@comcast.net</a>&gt;
                          <br>
                          <b>Sent:</b> Monday, July 19, 2021 1:45 AM<br>
                          <b>To:</b> <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true">us=
rp-users@lists.ettus.com</a><br>
                          <b>Subject:</b> [USRP-users] Re: Is UHD
                          supposed to keep running after detecting
                          overrun?</p>
                      </div>
                    </div>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p>It is a bug in UHD v4.0.0.0, but it should be
                      fixed in UHD v4.1.0.1 (and UHD v4.1.0.0).</p>
                    <p>Ron</p>
                    <div>
                      <p class=3D"MsoNormal">On 7/18/21 9:37 PM, wan
                        wrote:</p>
                    </div>
                    <blockquote style=3D"margin-top:5pt;margin-bottom:5pt=
">
                      <div>
                        <div>
                          <div>
                            <p class=3D"MsoNormal"
                              style=3D"margin-bottom:12pt">Hello,</p>
                          </div>
                          <p class=3D"MsoNormal"
                            style=3D"margin-bottom:12pt">When UHD detects
                            an overrun, is it supposed to keep going or
                            freeze? I'm using an USRP B200mini. I tested
                            it with the rx_ascii_dft and the uhd_fft GRC
                            example using different versions of UHD on
                            Ubuntu 20.04. When using UHD 3.15.0, an
                            overrun is detected, the application keeps
                            running and prints a sequence of "O" to the
                            terminal. However, when I use UHD 4.0.0.0
                            and 4.1.0.1, as soon as an overrun is
                            detected, the ascii or gnuradio QT displays
                            stop updating.</p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"margin-bottom:12pt">Regards,</p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal">Wan</p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal"><br>
                        <br>
                      </p>
                      <pre>______________________________________________=
_</pre>
                      <pre>USRP-users mailing list -- <a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true">usr=
p-users@lists.ettus.com</a></pre>
                      <pre>To unsubscribe send an email to <a href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D=
"true">usrp-users-leave@lists.ettus.com</a></pre>
                    </blockquote>
                  </div>
                </div>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true">usrp-users@l=
ists.ettus.com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true">usrp-users-l=
eave@lists.ettus.com</a><br>
              </blockquote>
            </div>
          </blockquote>
          <span>_______________________________________________</span><br=
>
          <span>USRP-users mailing list -- <a class=3D"moz-txt-link-abbre=
viated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a></span><br>
          <span>To unsubscribe send an email to
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a></span><br>
        </div>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------BCDD2C52565FFA8B306F23E1--

--===============6085729313941448858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6085729313941448858==--
