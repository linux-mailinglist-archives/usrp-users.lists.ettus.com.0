Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6575739A13D
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jun 2021 14:39:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 708533846E8
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jun 2021 08:39:27 -0400 (EDT)
Received: from cc.mail.osaka-u.ac.jp (cc-ext.ccc.osaka-u.ac.jp [133.1.138.214])
	by mm2.emwd.com (Postfix) with SMTP id DB2B13844B2
	for <usrp-users@lists.ettus.com>; Thu,  3 Jun 2021 08:38:21 -0400 (EDT)
Received: (qmail 14580 invoked by uid 0); 3 Jun 2021 21:38:20 +0900
X-Qmail-Scanner-Diagnostics: from 133.1.17.72 (viktor+ist@133.1.17.72) by m23 (envelope-from <viktor@ist.osaka-u.ac.jp>, uid 0) with qmail-scanner-2.11
 (clamdscan: 0.99.4/26096.  
 Clear:RC:0(133.1.17.72):.
 Processed in 0.058794 secs); 03 Jun 2021 12:38:20 -0000
X-Qmail-Scanner-Mail-From: viktor@ist.osaka-u.ac.jp via m23
X-Qmail-Scanner: 2.11 (Clear:RC:0(133.1.17.72):. Processed in 0.058794 secs)
Received: from unknown (HELO v-prec.higashi-local) (viktor+ist@133.1.17.72)
  by 172.30.102.163 with SMTP; 3 Jun 2021 21:38:20 +0900
To: usrp-users@lists.ettus.com
References: <b08d9a95-65ce-2544-241f-0706942aa9f8@ist.osaka-u.ac.jp>
 <86806861.3166323.1622721223239@mail.yahoo.com>
From: Viktor Erdelyi <viktor@ist.osaka-u.ac.jp>
Message-ID: <d56d40c3-d744-9da2-3db8-30671ed15ac3@ist.osaka-u.ac.jp>
Date: Thu, 3 Jun 2021 21:38:19 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <86806861.3166323.1622721223239@mail.yahoo.com>
Content-Type: multipart/mixed;
 boundary="------------36ABA12EA56D3AA51C47579F"
Content-Language: en-US
X-matriXscan-msec-AV: Clean
X-odins-Action: Approve
X-odins-spam: Uncategorized
Message-ID-Hash: HVRGBQS2GRUOFG623SEPMGIQUXIJN5A6
X-Message-ID-Hash: HVRGBQS2GRUOFG623SEPMGIQUXIJN5A6
X-MailFrom: viktor@ist.osaka-u.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Center frequency drift on USRP B-series even with Octoclock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HVRGBQS2GRUOFG623SEPMGIQUXIJN5A6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.
--------------36ABA12EA56D3AA51C47579F
Content-Type: multipart/alternative;
 boundary="------------D74AF21D20DD3BB9B33E29EA"


--------------D74AF21D20DD3BB9B33E29EA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Aneesh,

Thanks for your comment. I used a Intel(R) Core(TM) i7-8850H CPU for the 
B-series experiment (which is somewhat weaker than the "AMD Ryzen 9 
3900X 12-Core Processor" I used with the X310s, but the sampling rate 
was only 1MHz in both cases, so it should be fine). The software is 
basically a (self-made) JVM-based controller that communicates over 
sockets with a (self-made) C++-based server that uses UHD 4.0 under the 
hood. The whole thing is running on CentOS/Fedora. I attached the 
terminal outputs in case it helps, but I don't see any overruns/underruns.

As for the use case, I'm trying to use this to compare phase offsets 
across different receiver locations (given a fixed transmitter), so I 
need a constant (and ideally zero) frequency offset, otherwise the IQ 
vector keeps rotating back and forth as the frequencies drift apart.

Best regards,
Viktor

On 6/3/21 8:53 PM, aneesh patel wrote:
> Viktor,
>
> Cool benchmark.
>
> Do you have some specifics on what's driving the b-series like host 
> CPU specs, software, any stdout output like overruns etc.?
>
> There seems to be an issue with the external clock implementation on 
> the b series unless that's actually how it's supposed to look (!).
>
> For the for factor, power, price, etc. I'd say the internal looks 
> pretty good for *most things.
>
> Best of luck. Hopefully someone with experience chines in on the setup!
>
> Aneesh
>
>
> Sent from Yahoo Mail on Android 
> <https://go.onelink.me/107872968?pid=InProduct&c=Global_Internal_YGrowth_AndroidEmailSig__AndroidUsers&af_wl=ym&af_sub1=Internal&af_sub2=Global_YGrowth&af_sub3=EmailSignature>
>
>     On Thu, Jun 3, 2021 at 7:37 AM, Viktor Erdelyi
>     <viktor@ist.osaka-u.ac.jp> wrote:
>
>     Dear all,
>
>     First post here. I have done some measurements with USRP B-series
>     and X-series, and I noticed that, in the case of the B-series, the
>     center frequency drifts even with an Octoclock 10MHz REF. (The
>     drift is smaller than without Octoclock, though.) Is this
>     expected? Is the X-series just so much better, or is there
>     something else going on?
>
>     Details of the experiment:
>
>       * I sent a sine wave (constant I, constant Q) from one USRP to
>         another at 5.9GHz and looked at the spectrogram of the
>         received signal. The ideal result of such an experiment would
>         be a straight vertical line at 0 Hz (i.e. 5.9GHz).
>       * I added an image of the relevant spectrograms below. The left
>         side of the figure is TX = USRP B205, RX = USRP B210, internal
>         vs. external (Octoclock) REF. The right side of the figure is
>         TX = USRP X310, RX = (another) USRP X310, internal vs.
>         external (Octoclock) REF.
>       * The two X310s have UBX-160 daughterboards.
>       * I check for LO_locked and ref_locked before doing TX/RX.
>
>     I would appreciate any insights.
>
>     Thanks,
>     Viktor
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>

--------------D74AF21D20DD3BB9B33E29EA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Aneesh,</p>
    <p>Thanks for your comment. I used a Intel(R) Core(TM) i7-8850H CPU
      for the B-series experiment (which is somewhat weaker than the
      "AMD Ryzen 9 3900X 12-Core Processor" I used with the X310s, but
      the sampling rate was only 1MHz in both cases, so it should be
      fine). The software is basically a (self-made) JVM-based
      controller that communicates over sockets with a (self-made)
      C++-based server that uses UHD 4.0 under the hood. The whole thing
      is running on CentOS/Fedora. I attached the terminal outputs in
      case it helps, but I don't see any overruns/underruns.</p>
    <p>As for the use case, I'm trying to use this to compare phase
      offsets across different receiver locations (given a fixed
      transmitter), so I need a constant (and ideally zero) frequency
      offset, otherwise the IQ vector keeps rotating back and forth as
      the frequencies drift apart.</p>
    <p>Best regards,<br>
      Viktor<br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/3/21 8:53 PM, aneesh patel wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:86806861.3166323.1622721223239@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      Viktor,
      <div id=3D"yMail_cursorElementTracker_1622720374698"><br>
      </div>
      <div id=3D"yMail_cursorElementTracker_1622720374851">Cool
        benchmark.=C2=A0</div>
      <div id=3D"yMail_cursorElementTracker_1622720387230"><br>
      </div>
      <div id=3D"yMail_cursorElementTracker_1622720387372">Do you have
        some specifics on what's driving the b-series like host CPU
        specs, software, any stdout output like overruns etc.?</div>
      <div id=3D"yMail_cursorElementTracker_1622720963027"><br>
      </div>
      <div id=3D"yMail_cursorElementTracker_1622720963140">There seems to
        be an issue with the external clock implementation on the b
        series unless that's actually how it's supposed to look (!).=C2=A0=
</div>
      <div id=3D"yMail_cursorElementTracker_1622721135612"><br>
      </div>
      <div id=3D"yMail_cursorElementTracker_1622721135763">For the for
        factor, power, price, etc. I'd say the internal looks pretty
        good for *most things.</div>
      <div id=3D"yMail_cursorElementTracker_1622721171358"><br>
      </div>
      <div id=3D"yMail_cursorElementTracker_1622721171500">Best of luck.
        Hopefully someone with experience chines in on the setup!</div>
      <div id=3D"yMail_cursorElementTracker_1622721187002"><br>
      </div>
      <div id=3D"yMail_cursorElementTracker_1622721187146">Aneesh</div>
      <div id=3D"yMail_cursorElementTracker_1622720491155"><br>
      </div>
      <div id=3D"yMail_cursorElementTracker_1622720491264"><br>
        <div id=3D"ymail_android_signature"><a
            id=3D"ymail_android_signature_link"
href=3D"https://go.onelink.me/107872968?pid=3DInProduct&amp;c=3DGlobal_In=
ternal_YGrowth_AndroidEmailSig__AndroidUsers&amp;af_wl=3Dym&amp;af_sub1=3D=
Internal&amp;af_sub2=3DGlobal_YGrowth&amp;af_sub3=3DEmailSignature"
            moz-do-not-send=3D"true">Sent from Yahoo Mail on Android</a><=
/div>
        <br>
        <blockquote style=3D"margin: 0 0 20px 0;">
          <div style=3D"font-family:Roboto, sans-serif; color:#6D00F6;">
            <div>On Thu, Jun 3, 2021 at 7:37 AM, Viktor Erdelyi</div>
            <div><a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:viktor=
@ist.osaka-u.ac.jp">&lt;viktor@ist.osaka-u.ac.jp&gt;</a> wrote:</div>
          </div>
          <div style=3D"padding: 10px 0 0 20px; margin: 10px 0 0 0;
            border-left: 1px solid #6D00F6;">
            <div id=3D"yiv8156139607">
              <div>
                <p>Dear all,</p>
                <p>First post here. I have done some measurements with
                  USRP B-series and X-series, and I noticed that, in the
                  case of the B-series, the center frequency drifts even
                  with an Octoclock 10MHz REF. (The drift is smaller
                  than without Octoclock, though.) Is this expected? Is
                  the X-series just so much better, or is there
                  something else going on?<br>
                </p>
                <p>Details of the experiment:</p>
                <ul>
                  <li><span class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                        class=3D"yiv8156139607JLqJ4b"><span></span></span=
><span
                        class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"=
><span>I
                          sent a sine wave (</span></span></span><span
                      class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                        class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"=
><span><span
                            class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                              class=3D"yiv8156139607JLqJ4b
                              yiv8156139607ChMk0b"><span>constant </span>=
</span></span>I,
                          constant Q) from one USRP to another at 5.9GHz
                          and looked at the spectrogram of the received
                          signal. </span></span></span><span
                      class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                        class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"=
><span><span
                            class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                              class=3D"yiv8156139607JLqJ4b
                              yiv8156139607ChMk0b"><span><span
                                  class=3D"yiv8156139607VIiyi" lang=3D"en=
"><span
                                    class=3D"yiv8156139607JLqJ4b"><span><=
span
                                        class=3D"yiv8156139607VIiyi"
                                        lang=3D"en"><span
                                          class=3D"yiv8156139607JLqJ4b"><=
span><span
                                              class=3D"yiv8156139607VIiyi=
"
                                              lang=3D"en"><span
                                                class=3D"yiv8156139607JLq=
J4b
                                                yiv8156139607ChMk0b"><spa=
n><span
class=3D"yiv8156139607VIiyi" lang=3D"en"><span class=3D"yiv8156139607JLqJ=
4b"><span><span
class=3D"yiv8156139607VIiyi" lang=3D"en"><span class=3D"yiv8156139607JLqJ=
4b"><span>The
                                                          ideal result
                                                          of such an
                                                          experiment
                                                          would be a
                                                          straight
                                                          vertical line
                                                          at 0 Hz (i.e.
                                                          5.9GHz).</span>=
</span></span></span></span></span></span></span></span></span></span></s=
pan></span></span></span></span></span></span></span></span></span></li>
                  <li><span class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                        class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"=
><span><span
                            class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                              class=3D"yiv8156139607JLqJ4b
                              yiv8156139607ChMk0b"><span><span
                                  class=3D"yiv8156139607VIiyi" lang=3D"en=
"><span
                                    class=3D"yiv8156139607JLqJ4b"><span><=
span
                                        class=3D"yiv8156139607VIiyi"
                                        lang=3D"en"><span
                                          class=3D"yiv8156139607JLqJ4b"><=
span><span
                                              class=3D"yiv8156139607VIiyi=
"
                                              lang=3D"en"><span
                                                class=3D"yiv8156139607JLq=
J4b
                                                yiv8156139607ChMk0b"><spa=
n><span
class=3D"yiv8156139607VIiyi" lang=3D"en"><span class=3D"yiv8156139607JLqJ=
4b"><span><span
class=3D"yiv8156139607VIiyi" lang=3D"en"><span class=3D"yiv8156139607JLqJ=
4b"><span>I
                                                          added an image
                                                          of the
                                                          relevant
                                                          spectrograms
                                                          below.</span></=
span></span></span></span></span></span></span></span></span></span></spa=
n></span></span></span>
                                The left side of the figure is TX =3D USR=
P
                                B205, RX =3D USRP B210</span></span><span
                              class=3D"yiv8156139607JLqJ4b"><span>,
                                internal vs. external (Octoclock) REF. <s=
pan
                                  class=3D"yiv8156139607VIiyi" lang=3D"en=
"><span
                                    class=3D"yiv8156139607JLqJ4b
                                    yiv8156139607ChMk0b"><span>The right
                                      side of the figure is TX =3D USRP
                                      X310, RX =3D (another) USRP X310</s=
pan></span><span
                                    class=3D"yiv8156139607JLqJ4b"><span> =
</span></span></span></span></span></span></span></span></span><span
                      class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                        class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"=
><span><span
                            class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                              class=3D"yiv8156139607JLqJ4b"><span><span
                                  class=3D"yiv8156139607VIiyi" lang=3D"en=
"><span
                                    class=3D"yiv8156139607JLqJ4b"><span><=
span
                                        class=3D"yiv8156139607VIiyi"
                                        lang=3D"en"><span
                                          class=3D"yiv8156139607JLqJ4b
                                          yiv8156139607ChMk0b"><span><spa=
n
                                              class=3D"yiv8156139607VIiyi=
"
                                              lang=3D"en"><span
                                                class=3D"yiv8156139607JLq=
J4b"><span>,
                                                  internal vs. external
                                                </span></span></span></sp=
an></span></span></span></span></span></span></span></span></span></span>=
</span><span
                      class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                        class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"=
><span><span
                            class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                              class=3D"yiv8156139607JLqJ4b"><span><span
                                  class=3D"yiv8156139607VIiyi" lang=3D"en=
"><span
                                    class=3D"yiv8156139607JLqJ4b"><span><=
span
                                        class=3D"yiv8156139607VIiyi"
                                        lang=3D"en"><span
                                          class=3D"yiv8156139607JLqJ4b
                                          yiv8156139607ChMk0b"><span><spa=
n
                                              class=3D"yiv8156139607VIiyi=
"
                                              lang=3D"en"><span
                                                class=3D"yiv8156139607JLq=
J4b"><span><span
class=3D"yiv8156139607VIiyi" lang=3D"en"><span class=3D"yiv8156139607JLqJ=
4b
                                                      yiv8156139607ChMk0b=
"><span><span
class=3D"yiv8156139607VIiyi" lang=3D"en"><span class=3D"yiv8156139607JLqJ=
4b"><span>(Octoclock)</span></span></span></span></span></span>
                                                  REF</span></span></span=
></span></span></span>.</span></span></span></span></span></span></span><=
/span></span></li>
                  <li><span class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                        class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"=
><span><span
                            class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                              class=3D"yiv8156139607JLqJ4b"><span><span
                                  class=3D"yiv8156139607VIiyi" lang=3D"en=
"><span
                                    class=3D"yiv8156139607JLqJ4b"><span>T=
he
                                      two X310s have UBX-160
                                      daughterboards.<br>
                                    </span></span></span></span></span></=
span></span></span></span></li>
                  <li><span class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                        class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"=
><span><span
                            class=3D"yiv8156139607VIiyi" lang=3D"en"><spa=
n
                              class=3D"yiv8156139607JLqJ4b"><span><span
                                  class=3D"yiv8156139607VIiyi" lang=3D"en=
"><span
                                    class=3D"yiv8156139607JLqJ4b"><span>I
                                      check for LO_locked and ref_locked
                                      before doing TX/RX.</span></span></=
span></span></span></span></span></span></span></li>
                </ul>
                <p><span class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                      class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"><=
span><span
                          class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                            class=3D"yiv8156139607JLqJ4b"><span><span
                                class=3D"yiv8156139607VIiyi" lang=3D"en">=
<span
                                  class=3D"yiv8156139607JLqJ4b"><span>I
                                    would appreciate any insights.<br>
                                  </span></span></span></span></span></sp=
an></span></span></span></p>
                <p><span class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                      class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"><=
span><span
                          class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                            class=3D"yiv8156139607JLqJ4b"><span><span
                                class=3D"yiv8156139607VIiyi" lang=3D"en">=
<span
                                  class=3D"yiv8156139607JLqJ4b"><span>Tha=
nks,<br>
                                    Viktor<br>
                                  </span></span></span></span></span></sp=
an></span></span></span></p>
                <p><span class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                      class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"><=
span><span
                          class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                            class=3D"yiv8156139607JLqJ4b"><span><span
                                class=3D"yiv8156139607VIiyi" lang=3D"en">=
<span
                                  class=3D"yiv8156139607JLqJ4b"><span><br=
>
                                  </span></span></span></span></span></sp=
an></span></span></span></p>
                <p><span class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                      class=3D"yiv8156139607JLqJ4b yiv8156139607ChMk0b"><=
span><span
                          class=3D"yiv8156139607VIiyi" lang=3D"en"><span
                            class=3D"yiv8156139607JLqJ4b"><span><span
                                class=3D"yiv8156139607VIiyi" lang=3D"en">=
<span
                                  class=3D"yiv8156139607JLqJ4b"><span><im=
g
                                      src=3D"cid:vRV47Cql93eQrajUucIH"
                                      yahoo_partid=3D"1.2.2" alt=3D""
                                      id=3D"ymail_ctr_id_-206038-2"
                                      moz-do-not-send=3D"true"></span></s=
pan></span></span></span></span></span></span></span></p>
              </div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              ymailto=3D"mailto:usrp-users@lists.ettus.com"
              href=3D"mailto:usrp-users@lists.ettus.com"
              moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              ymailto=3D"mailto:usrp-users-leave@lists.ettus.com"
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</=
a><br>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------D74AF21D20DD3BB9B33E29EA--

--------------36ABA12EA56D3AA51C47579F
Content-Type: text/plain; charset=UTF-8;
 name="sdr-native-stdout.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="sdr-native-stdout.txt"

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gQ29udHJv
bGxlciBvdXRwdXQgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KMTk6MjU6MDAuMjM3IFttYWluXSBJTkZPIFVTUlBOYXRpdmVDbGllbnQgLSBTZXR0
aW5nIDEwTUh6IFJFRiBzb3VyY2UgdG8gZXh0ZXJuYWwKMTk6MjU6MDAuMjM5IFttYWluXSBJ
TkZPIFVTUlBOYXRpdmVDbGllbnQgLSBTZXR0aW5nIFBQUyBzb3VyY2UgdG8gaW50ZXJuYWwK
MTk6MjU6MDAuMjQwIFttYWluXSBJTkZPIG1haW4ucmFkaW8uVVNSUE1ha2VyIC0gQ29uZmln
dXJpbmcgVVNSUCBCMjA1bWluaSBmb3IgVFguLi4KMTk6MjU6MDAuMjQxIFttYWluXSBJTkZP
IFVTUlBOYXRpdmVDbGllbnQgLSBTZXR0aW5nIFRYIHN1YmRldmljZSB0byBBOkEKMTk6MjU6
MDAuMjczIFttYWluXSBJTkZPIFVTUlBOYXRpdmVDbGllbnQgLSBTZXR0aW5nIFRYIEdhaW4g
dG8gNjAuMAoxOToyNTowMC4zMTYgW21haW5dIElORk8gVVNSUE5hdGl2ZUNsaWVudCAtIFNl
dHRpbmcgVFggU2FtcGxpbmdSYXRlIHRvIDEgTUh6CjE5OjI1OjAwLjY3NiBbbWFpbl0gSU5G
TyBVU1JQTmF0aXZlQ2xpZW50IC0gU2V0dGluZyBUWCBBbnRlbm5hIHRvIFRYL1JYCjE5OjI1
OjAwLjY3NyBbbWFpbl0gSU5GTyBVU1JQTmF0aXZlQ2xpZW50IC0gU2V0dGluZyBUWCBCYW5k
d2lkdGggdG8gNS42RTcKMTk6MjU6MDAuNjc5IFttYWluXSBJTkZPIFVTUlBOYXRpdmVDbGll
bnQgLSBTZXR0aW5nIHVwIFRYIHN0cmVhbWVyCjE5OjI1OjAyLjYyMiBbbWFpbl0gSU5GTyBV
U1JQTmF0aXZlQ2xpZW50IC0gU2V0dGluZyAxME1IeiBSRUYgc291cmNlIHRvIGV4dGVybmFs
CjE5OjI1OjAyLjYyOSBbbWFpbl0gSU5GTyBVU1JQTmF0aXZlQ2xpZW50IC0gU2V0dGluZyBQ
UFMgc291cmNlIHRvIGludGVybmFsCjE5OjI1OjAyLjYzMCBbbWFpbl0gSU5GTyBtYWluLnJh
ZGlvLlVTUlBNYWtlciAtIENvbmZpZ3VyaW5nIFVTUlAgQjIxMF9SRl9BIGZvciBSWC4uLgox
OToyNTowMi42MzAgW21haW5dIElORk8gVVNSUE5hdGl2ZUNsaWVudCAtIFNldHRpbmcgUlgg
c3ViZGV2aWNlIHRvIEE6QQoxOToyNTowMi42NjMgW21haW5dIElORk8gVVNSUE5hdGl2ZUNs
aWVudCAtIFNldHRpbmcgUlggR2FpbiB0byA3Ni41CjE5OjI1OjAyLjcwNSBbbWFpbl0gSU5G
TyBVU1JQTmF0aXZlQ2xpZW50IC0gU2V0dGluZyBSWCBTYW1wbGluZ1JhdGUgdG8gMSBNSHoK
MTk6MjU6MDMuMTU3IFttYWluXSBJTkZPIFVTUlBOYXRpdmVDbGllbnQgLSBTZXR0aW5nIFJY
IEFudGVubmEgdG8gUlgyCjE5OjI1OjAzLjE1OCBbbWFpbl0gSU5GTyBVU1JQTmF0aXZlQ2xp
ZW50IC0gU2V0dGluZyBSWCBCYW5kd2lkdGggdG8gNS42RTcKMTk6MjU6MDMuMjAyIFttYWlu
XSBJTkZPIFVTUlBOYXRpdmVDbGllbnQgLSBTZXR0aW5nIHVwIFJYIHN0cmVhbWVyCjE5OjI1
OjAzLjI3MCBbRGVmYXVsdERpc3BhdGNoZXItd29ya2VyLTJdIElORk8gVVNSUE5hdGl2ZUNs
aWVudCAtIFNldHRpbmcgVVNSUCB0aW1lIHRvIDAuMCBOT1cKMTk6MjU6MDMuMjczIFtEZWZh
dWx0RGlzcGF0Y2hlci13b3JrZXItM10gSU5GTyBVU1JQTmF0aXZlQ2xpZW50IC0gU2V0dGlu
ZyBVU1JQIHRpbWUgdG8gMC4wIE5PVwoxOToyNTowMy4zMTUgW0RlZmF1bHREaXNwYXRjaGVy
LXdvcmtlci0zXSBJTkZPIFVTUlBOYXRpdmVDbGllbnQgLSBHZXR0aW5nIFVTUlAgdGltZSAt
LT4gMC4wMDI2MzEKMTk6MjU6MDMuMzE1IFtEZWZhdWx0RGlzcGF0Y2hlci13b3JrZXItMV0g
SU5GTyBVU1JQTmF0aXZlQ2xpZW50IC0gR2V0dGluZyBVU1JQIHRpbWUgLS0+IDAuMDQxOTMK
MTk6MjU6MDMuMzE5IFttYWluXSBJTkZPIERldmljZVN5bmNocm9uaXplciAtIFN5bmMgZXJy
b3I6IC0wLjAzOTI5OSBzCjE5OjI1OjAzLjMyNyBbbWFpbl0gSU5GTyBUWFJYU2lnbmFsUmVj
b3JkZXJDbWQgLSBGUkVRIDUuOSBHSHogPT09PT09PT09PT09PT09PT09PT0KMTk6MjU6MDMu
MzI4IFttYWluXSBJTkZPIFVTUlBOYXRpdmVDbGllbnQgLSBHZXR0aW5nIFVTUlAgdGltZSAt
LT4gMC4wMTUxOTIKMTk6MjU6MDMuMzI4IFttYWluXSBJTkZPIERldmljZVN5bmNocm9uaXpl
ciAtIFR1bmluZyBUWC1SWC4uLgoxOToyNTowMy4zMjggW21haW5dIElORk8gVVNSUE5hdGl2
ZUNsaWVudCAtIFNldHRpbmcgY29tbWFuZCB0aW1lIHRvIDAuMjE1MTkyMDAwMDAwMDAwMDIK
MTk6MjU6MDMuMzcwIFttYWluXSBJTkZPIFVTUlBOYXRpdmVDbGllbnQgLSBTZXR0aW5nIGNv
bW1hbmQgdGltZSB0byAwLjIxNTE5MjAwMDAwMDAwMDAyCjE5OjI1OjAzLjQxMiBbbWFpbl0g
SU5GTyBVU1JQTmF0aXZlQ2xpZW50IC0gU2V0dGluZyBUWCBjZW50ZXIgZnJlcXVlbmN5IHRv
IDUuOSBHSHogKExPIG9mZnNldCAyIE1IeikKMTk6MjU6MDMuNDQ0IFttYWluXSBJTkZPIFVT
UlBOYXRpdmVDbGllbnQgLSBTZXR0aW5nIFJYIGNlbnRlciBmcmVxdWVuY3kgdG8gNS45IEdI
eiArIDAga0h6IChMTyBvZmZzZXQgMiBNSHopCjE5OjI1OjAzLjU3OCBbbWFpbl0gSU5GTyBV
U1JQTmF0aXZlQ2xpZW50IC0gQ2xlYXJpbmcgY29tbWFuZCB0aW1lCjE5OjI1OjAzLjU3OSBb
bWFpbl0gSU5GTyBVU1JQTmF0aXZlQ2xpZW50IC0gQ2xlYXJpbmcgY29tbWFuZCB0aW1lCjE5
OjI1OjAzLjU4MCBbbWFpbl0gSU5GTyBEZXZpY2VTeW5jaHJvbml6ZXIgLSBTdGFydGluZyBU
WC1SWCBzZXF1ZW5jZS4uLgoxOToyNTowMy41OTQgW3Bvb2wtMS10aHJlYWQtMl0gSU5GTyBE
ZXZpY2VTeW5jaHJvbml6ZXIgLSBbVFhdIHN0YXJ0aW5nIHRvIHRyYW5zbWl0CjE5OjI1OjAz
LjU5NSBbcG9vbC0xLXRocmVhZC0yXSBJTkZPIFVTUlBOYXRpdmVDbGllbnQgLSBUcmFuc21p
dHRpbmcgc2lnbmFsIENvbnN0YW50SVEsIDEwMDAwMDAwIHNhbXBsZXMsIHN0YXJ0VGltZSA1
LjcxNTE5MgoxOToyNTowMy41OTUgW3Bvb2wtMS10aHJlYWQtMV0gSU5GTyBEZXZpY2VTeW5j
aHJvbml6ZXIgLSBKb2luaW5nLi4uCjE5OjI1OjAzLjU5NyBbcG9vbC0xLXRocmVhZC0xXSBJ
TkZPIERldmljZVN5bmNocm9uaXplciAtIFtSWF0gc3RhcnRpbmcgdG8gcmVjZWl2ZQoxOToy
NTowMy41OTcgW3Bvb2wtMS10aHJlYWQtMV0gSU5GTyBVU1JQTmF0aXZlQ2xpZW50IC0gUmVj
ZWl2aW5nIDEwMDAwMDAwIHNhbXBsZXMgQCB0aW1lIDUuNzE1MTkyCjE5OjI1OjIwLjAzMiBb
cG9vbC0xLXRocmVhZC0yXSBJTkZPIERldmljZVN5bmNocm9uaXplciAtIFtUWF0gdHJhbnNt
aXRTaWduYWwgcmV0dXJuZWQKMTk6MjU6MjAuMTU5IFtwb29sLTEtdGhyZWFkLTFdIElORk8g
RGV2aWNlU3luY2hyb25pemVyIC0gW1JYXSBSZWNlaXZlciByZXR1cm5lZCAoY29sbGVjdGVk
IDEwMDAwMDAwIHNhbXBsZXMpCjE5OjI1OjI2LjI1NiBbcG9vbC0xLXRocmVhZC0xXSBJTkZP
IERldmljZVN5bmNocm9uaXplciAtIFNpbmtzIHVwZGF0ZWQKMTk6MjU6MjYuMjU3IFtwb29s
LTEtdGhyZWFkLTFdIElORk8gRGV2aWNlU3luY2hyb25pemVyIC0gRG9uZQoKPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gTmF0aXZlIG91dHB1dCA9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpBY2NlcHRp
bmcgY29ubmVjdGlvbnMuLi4KTmV3IGNsaWVudCBzZXNzaW9uClsyMDIxLTA2LTAzIDE5OjI0
OjU3Ljk4MTI5OV0gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJl
bW90ZXBvcnQtNTY5NTJdIFdhaXRpbmcgZm9yIGNvbW1hbmQuLi4KClsyMDIxLTA2LTAzIDE5
OjI0OjU3Ljk4MTk0NV0gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtTZXNzaW9u
LXJlbW90ZXBvcnQtNTY5NTJdIFJlY2VpdmVkIGNvbnRyb2wgY29tbWFuZDogJ2luaXQgc2Vy
aWFsPTMxQjY2RDYnClsyMDIxLTA2LTAzIDE5OjI0OjU3Ljk4MTk3M10gWzB4MDAwMDdmM2Y2
ZWQxOTY0MF0gW2luZm9dICAgIENyZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3aXRoOiA+PnNl
cmlhbD0zMUI2NkQ2PDwuLi4KW0lORk9dIFtCMjAwXSBEZXRlY3RlZCBEZXZpY2U6IEIyMDVt
aW5pCltJTkZPXSBbQjIwMF0gT3BlcmF0aW5nIG92ZXIgVVNCIDMuCltJTkZPXSBbQjIwMF0g
SW5pdGlhbGl6ZSBDT0RFQyBjb250cm9sLi4uCltJTkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBS
YWRpbyBjb250cm9sLi4uCltJTkZPXSBbQjIwMF0gUGVyZm9ybWluZyByZWdpc3RlciBsb29w
YmFjayB0ZXN0Li4uCltJTkZPXSBbQjIwMF0gUmVnaXN0ZXIgbG9vcGJhY2sgdGVzdCBwYXNz
ZWQKW0lORk9dIFtCMjAwXSBTZXR0aW5nIG1hc3RlciBjbG9jayByYXRlIHNlbGVjdGlvbiB0
byAnYXV0b21hdGljJy4KW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMTYu
MDAwMDAwIE1Iei4uLgpbSU5GT10gW0IyMDBdIEFjdHVhbGx5IGdvdCBjbG9jayByYXRlIDE2
LjAwMDAwMCBNSHouClsyMDIxLTA2LTAzIDE5OjI1OjAwLjIzNjU1N10gWzB4MDAwMDdmM2Y2
ZWQxOTY0MF0gW2luZm9dICAgIFVzaW5nIERldmljZTogU2luZ2xlIFVTUlA6CiAgRGV2aWNl
OiBCLVNlcmllcyBEZXZpY2UKICBNYm9hcmQgMDogQjIwNW1pbmkKICBSWCBDaGFubmVsOiAw
CiAgICBSWCBEU1A6IDAKICAgIFJYIERib2FyZDogQQogICAgUlggU3ViZGV2OiBGRS1SWDEK
ICBUWCBDaGFubmVsOiAwCiAgICBUWCBEU1A6IDAKICAgIFRYIERib2FyZDogQQogICAgVFgg
U3ViZGV2OiBGRS1UWDEKClsyMDIxLTA2LTAzIDE5OjI1OjAwLjIzNjc5N10gWzB4MDAwMDdm
M2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5NTJdIFdhaXRp
bmcgZm9yIGNvbW1hbmQuLi4KClsyMDIxLTA2LTAzIDE5OjI1OjAwLjIzOTU3NV0gWzB4MDAw
MDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5NTJdIFJl
Y2VpdmVkIGNvbnRyb2wgY29tbWFuZDogJ3NldENsb2NrU291cmNlXzEwTUh6UkVGIGV4dGVy
bmFsJwpbMjAyMS0wNi0wMyAxOToyNTowMC4yMzk4ODddIFsweDAwMDA3ZjNmNmVkMTk2NDBd
IFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTUyXSBXYWl0aW5nIGZvciBjb21t
YW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMC4yNDA0MzddIFsweDAwMDA3ZjNmNmVkMTk2
NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTUyXSBSZWNlaXZlZCBjb250
cm9sIGNvbW1hbmQ6ICdzZXRDbG9ja1NvdXJjZV9QUFMgaW50ZXJuYWwnClsyMDIxLTA2LTAz
IDE5OjI1OjAwLjI0MDY2OV0gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtTZXNz
aW9uLXJlbW90ZXBvcnQtNTY5NTJdIFdhaXRpbmcgZm9yIGNvbW1hbmQuLi4KClsyMDIxLTA2
LTAzIDE5OjI1OjAwLjI0MTcwNF0gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtT
ZXNzaW9uLXJlbW90ZXBvcnQtNTY5NTJdIFJlY2VpdmVkIGNvbnRyb2wgY29tbWFuZDogJ3Nl
dFRYU3ViZGV2aWNlIEE6QScKWzIwMjEtMDYtMDMgMTk6MjU6MDAuMjY5OTYxXSBbMHgwMDAw
N2YzZjZlZDE5NjQwXSBbaW5mb10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0gV2Fp
dGluZyBmb3IgY29tbWFuZC4uLgoKWzIwMjEtMDYtMDMgMTk6MjU6MDAuMzE0NTUxXSBbMHgw
MDAwN2YzZjZlZDE5NjQwXSBbaW5mb10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0g
UmVjZWl2ZWQgY29udHJvbCBjb21tYW5kOiAnc2V0VFhHYWluIDYwLjAnClsyMDIxLTA2LTAz
IDE5OjI1OjAwLjMxNDY4N10gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFNldHRp
bmcgVFggR2FpbjogNjAuMDAwMDAwIGRCLi4uClsyMDIxLTA2LTAzIDE5OjI1OjAwLjMxNTM1
NV0gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIEFjdHVhbCBUWCBHYWluOiA2MC4w
MDAwMDAgZEIuLi4KWzIwMjEtMDYtMDMgMTk6MjU6MDAuMzE1NDgyXSBbMHgwMDAwN2YzZjZl
ZDE5NjQwXSBbaW5mb10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0gV2FpdGluZyBm
b3IgY29tbWFuZC4uLgoKWzIwMjEtMDYtMDMgMTk6MjU6MDAuMzE2ODI1XSBbMHgwMDAwN2Yz
ZjZlZDE5NjQwXSBbaW5mb10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0gUmVjZWl2
ZWQgY29udHJvbCBjb21tYW5kOiAnc2V0VFhTYW1wbGluZ1JhdGUgMTAwMDAwMC4wJwpbMjAy
MS0wNi0wMyAxOToyNTowMC4zMTY5NDRdIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAg
ICBTZXR0aW5nIFRYIFJhdGU6IDEuMDAwMDAwIE1zcHMuLi4KW0lORk9dIFtCMjAwXSBBc2tp
bmcgZm9yIGNsb2NrIHJhdGUgMzIuMDAwMDAwIE1Iei4uLgpbSU5GT10gW0IyMDBdIEFjdHVh
bGx5IGdvdCBjbG9jayByYXRlIDMyLjAwMDAwMCBNSHouClsyMDIxLTA2LTAzIDE5OjI1OjAw
LjYzNTg5NV0gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIEFjdHVhbCBUWCBSYXRl
OiAxLjAwMDAwMCBNc3BzLi4uClsyMDIxLTA2LTAzIDE5OjI1OjAwLjYzNjA2Ml0gWzB4MDAw
MDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5NTJdIFdh
aXRpbmcgZm9yIGNvbW1hbmQuLi4KClsyMDIxLTA2LTAzIDE5OjI1OjAwLjY3NzMxMV0gWzB4
MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5NTJd
IFJlY2VpdmVkIGNvbnRyb2wgY29tbWFuZDogJ3NldFRYQW50ZW5uYSBUWC9SWCcKWzIwMjEt
MDYtMDMgMTk6MjU6MDAuNjc3NTk2XSBbMHgwMDAwN2YzZjZlZDE5NjQwXSBbaW5mb10gICAg
W1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0gV2FpdGluZyBmb3IgY29tbWFuZC4uLgoKWzIw
MjEtMDYtMDMgMTk6MjU6MDAuNjc4NDYwXSBbMHgwMDAwN2YzZjZlZDE5NjQwXSBbaW5mb10g
ICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0gUmVjZWl2ZWQgY29udHJvbCBjb21tYW5k
OiAnc2V0VFhCYW5kd2lkdGggNS42RTcnClsyMDIxLTA2LTAzIDE5OjI1OjAwLjY3ODYxNF0g
WzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFNldHRpbmcgVFggQmFuZHdpZHRoOiA1
Ni4wMDAwMDAgTUh6Li4uClsyMDIxLTA2LTAzIDE5OjI1OjAwLjY3OTYxMF0gWzB4MDAwMDdm
M2Y2ZWQxOTY0MF0gW2luZm9dICAgIEFjdHVhbCBUWCBCYW5kd2lkdGg6IDU2LjAwMDAwMCBN
SHouLi4KWzIwMjEtMDYtMDMgMTk6MjU6MDAuNjc5Nzk4XSBbMHgwMDAwN2YzZjZlZDE5NjQw
XSBbaW5mb10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0gV2FpdGluZyBmb3IgY29t
bWFuZC4uLgoKWzIwMjEtMDYtMDMgMTk6MjU6MDAuNjgwNTEwXSBbMHgwMDAwN2YzZjZlZDE5
NjQwXSBbaW5mb10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0gUmVjZWl2ZWQgY29u
dHJvbCBjb21tYW5kOiAnc2V0dXBUWFN0cmVhbWVyIGZjMzIgc2MxNicKWzIwMjEtMDYtMDMg
MTk6MjU6MDAuNzA2MTU2XSBbMHgwMDAwN2YzZjZlZDE5NjQwXSBbaW5mb10gICAgW1Nlc3Np
b24tcmVtb3RlcG9ydC01Njk1Ml0gV2FpdGluZyBmb3IgY29tbWFuZC4uLgoKQWNjZXB0aW5n
IGNvbm5lY3Rpb25zLi4uCk5ldyBjbGllbnQgc2Vzc2lvbgpbMjAyMS0wNi0wMyAxOToyNTow
MC43NDg1MzhdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1v
dGVwb3J0LTU2OTU4XSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToy
NTowMC43NDg2NTZdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1y
ZW1vdGVwb3J0LTU2OTU4XSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdpbml0IHNlcmlh
bD0zMUI5MkMxJwpbMjAyMS0wNi0wMyAxOToyNTowMC43NDg3NzhdIFsweDAwMDA3ZjNmNmQ1
MTY2NDBdIFtpbmZvXSAgICBDcmVhdGluZyB0aGUgdXNycCBkZXZpY2Ugd2l0aDogPj5zZXJp
YWw9MzFCOTJDMTw8Li4uCltJTkZPXSBbQjIwMF0gRGV0ZWN0ZWQgRGV2aWNlOiBCMjEwCltJ
TkZPXSBbQjIwMF0gT3BlcmF0aW5nIG92ZXIgVVNCIDMuCltJTkZPXSBbQjIwMF0gSW5pdGlh
bGl6ZSBDT0RFQyBjb250cm9sLi4uCltJTkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBSYWRpbyBj
b250cm9sLi4uCltJTkZPXSBbQjIwMF0gUGVyZm9ybWluZyByZWdpc3RlciBsb29wYmFjayB0
ZXN0Li4uCltJTkZPXSBbQjIwMF0gUmVnaXN0ZXIgbG9vcGJhY2sgdGVzdCBwYXNzZWQKW0lO
Rk9dIFtCMjAwXSBQZXJmb3JtaW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi4KW0lORk9d
IFtCMjAwXSBSZWdpc3RlciBsb29wYmFjayB0ZXN0IHBhc3NlZApbSU5GT10gW0IyMDBdIFNl
dHRpbmcgbWFzdGVyIGNsb2NrIHJhdGUgc2VsZWN0aW9uIHRvICdhdXRvbWF0aWMnLgpbSU5G
T10gW0IyMDBdIEFza2luZyBmb3IgY2xvY2sgcmF0ZSAxNi4wMDAwMDAgTUh6Li4uCltJTkZP
XSBbQjIwMF0gQWN0dWFsbHkgZ290IGNsb2NrIHJhdGUgMTYuMDAwMDAwIE1Iei4KWzIwMjEt
MDYtMDMgMTk6MjU6MDIuNjIyMjE1XSBbMHgwMDAwN2YzZjZkNTE2NjQwXSBbaW5mb10gICAg
VXNpbmcgRGV2aWNlOiBTaW5nbGUgVVNSUDoKICBEZXZpY2U6IEItU2VyaWVzIERldmljZQog
IE1ib2FyZCAwOiBCMjEwCiAgUlggQ2hhbm5lbDogMAogICAgUlggRFNQOiAwCiAgICBSWCBE
Ym9hcmQ6IEEKICAgIFJYIFN1YmRldjogRkUtUlgyCiAgUlggQ2hhbm5lbDogMQogICAgUlgg
RFNQOiAxCiAgICBSWCBEYm9hcmQ6IEEKICAgIFJYIFN1YmRldjogRkUtUlgxCiAgVFggQ2hh
bm5lbDogMAogICAgVFggRFNQOiAwCiAgICBUWCBEYm9hcmQ6IEEKICAgIFRYIFN1YmRldjog
RkUtVFgyCiAgVFggQ2hhbm5lbDogMQogICAgVFggRFNQOiAxCiAgICBUWCBEYm9hcmQ6IEEK
ICAgIFRYIFN1YmRldjogRkUtVFgxCgpbMjAyMS0wNi0wMyAxOToyNTowMi42MjI0NzhdIFsw
eDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4
XSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMi42MjMyNjRd
IFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2
OTU4XSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdzZXRDbG9ja1NvdXJjZV8xME1IelJF
RiBleHRlcm5hbCcKWzIwMjEtMDYtMDMgMTk6MjU6MDIuNjI5MDA2XSBbMHgwMDAwN2YzZjZk
NTE2NjQwXSBbaW5mb10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1OF0gV2FpdGluZyBm
b3IgY29tbWFuZC4uLgoKWzIwMjEtMDYtMDMgMTk6MjU6MDIuNjI5NjM3XSBbMHgwMDAwN2Yz
ZjZkNTE2NjQwXSBbaW5mb10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1OF0gUmVjZWl2
ZWQgY29udHJvbCBjb21tYW5kOiAnc2V0Q2xvY2tTb3VyY2VfUFBTIGludGVybmFsJwpbMjAy
MS0wNi0wMyAxOToyNTowMi42Mjk4NzFdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAg
ICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpb
MjAyMS0wNi0wMyAxOToyNTowMi42MzA4NTBdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZv
XSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBSZWNlaXZlZCBjb250cm9sIGNvbW1h
bmQ6ICdzZXRSWFN1YmRldmljZSBBOkEnClsyMDIxLTA2LTAzIDE5OjI1OjAyLjY2MzU0OV0g
WzB4MDAwMDdmM2Y2ZDUxNjY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5
NThdIFdhaXRpbmcgZm9yIGNvbW1hbmQuLi4KClsyMDIxLTA2LTAzIDE5OjI1OjAyLjY2NDQ0
MV0gWzB4MDAwMDdmM2Y2ZDUxNjY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQt
NTY5NThdIFJlY2VpdmVkIGNvbnRyb2wgY29tbWFuZDogJ3NldFJYR2FpbiA3Ni41JwpbMjAy
MS0wNi0wMyAxOToyNTowMi42NjQ1NzldIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAg
ICBTZXR0aW5nIFJYIEdhaW46IDc2LjUwMDAwMCBkQi4uLgpbMjAyMS0wNi0wMyAxOToyNTow
Mi42NjQ5MTVdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBBY3R1YWwgUlggR2Fp
bjogNzYuMDAwMDAwIGRCLi4uClsyMDIxLTA2LTAzIDE5OjI1OjAyLjY2NTAzN10gWzB4MDAw
MDdmM2Y2ZDUxNjY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5NThdIFdh
aXRpbmcgZm9yIGNvbW1hbmQuLi4KClsyMDIxLTA2LTAzIDE5OjI1OjAyLjc0NzQ0MF0gWzB4
MDAwMDdmM2Y2ZDUxNjY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5NThd
IFJlY2VpdmVkIGNvbnRyb2wgY29tbWFuZDogJ3NldFJYU2FtcGxpbmdSYXRlIDEwMDAwMDAu
MCcKWzIwMjEtMDYtMDMgMTk6MjU6MDIuNzQ3NTA0XSBbMHgwMDAwN2YzZjZkNTE2NjQwXSBb
aW5mb10gICAgU2V0dGluZyBSWCBSYXRlOiAxLjAwMDAwMCBNc3BzLi4uCltJTkZPXSBbQjIw
MF0gQXNraW5nIGZvciBjbG9jayByYXRlIDMyLjAwMDAwMCBNSHouLi4KW0lORk9dIFtCMjAw
XSBBY3R1YWxseSBnb3QgY2xvY2sgcmF0ZSAzMi4wMDAwMDAgTUh6LgpbMjAyMS0wNi0wMyAx
OToyNTowMy4xNTcwMTZdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBBY3R1YWwg
UlggUmF0ZTogMS4wMDAwMDAgTXNwcy4uLgpbMjAyMS0wNi0wMyAxOToyNTowMy4xNTcyNjVd
IFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2
OTU4XSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMy4xNTc4
NDRdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0
LTU2OTU4XSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdzZXRSWEFudGVubmEgUlgyJwpb
MjAyMS0wNi0wMyAxOToyNTowMy4xNTg2MjBdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZv
XSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBXYWl0aW5nIGZvciBjb21tYW5kLi4u
CgpbMjAyMS0wNi0wMyAxOToyNTowMy4xNTkwMjFdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtp
bmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBSZWNlaXZlZCBjb250cm9sIGNv
bW1hbmQ6ICdzZXRSWEJhbmR3aWR0aCA1LjZFNycKWzIwMjEtMDYtMDMgMTk6MjU6MDMuMTU5
MTEwXSBbMHgwMDAwN2YzZjZkNTE2NjQwXSBbaW5mb10gICAgU2V0dGluZyBSWCBCYW5kd2lk
dGg6IDU2LjAwMDAwMCBNSHouLi4KWzIwMjEtMDYtMDMgMTk6MjU6MDMuMTYwNzkzXSBbMHgw
MDAwN2YzZjZkNTE2NjQwXSBbaW5mb10gICAgQWN0dWFsIFJYIEJhbmR3aWR0aDogNTYuMDAw
MDAwIE1Iei4uLgpbMjAyMS0wNi0wMyAxOToyNTowMy4xNjA5MDddIFsweDAwMDA3ZjNmNmQ1
MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBXYWl0aW5nIGZv
ciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMy4yMDMyNzNdIFsweDAwMDA3ZjNm
NmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBSZWNlaXZl
ZCBjb250cm9sIGNvbW1hbmQ6ICdzZXR1cFJYU3RyZWFtZXIgZmMzMiBzYzE2JwpbMjAyMS0w
Ni0wMyAxOToyNTowMy4yMDU2NTVdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBb
U2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAy
MS0wNi0wMyAxOToyNTowMy4yNzMyODVdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAg
ICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6
ICdzZXRVU1JQVGltZU5vdyAwLjAnClsyMDIxLTA2LTAzIDE5OjI1OjAzLjI3MzMyN10gWzB4
MDAwMDdmM2Y2ZDUxNjY0MF0gW2luZm9dICAgIFNldHRpbmcgVVNSUCB0aW1lIHRvIDAuMDAw
MDAwIE5PVy4uLgpbMjAyMS0wNi0wMyAxOToyNTowMy4yNzM2NDVdIFsweDAwMDA3ZjNmNmQ1
MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBXYWl0aW5nIGZv
ciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMy4zMTI0MTBdIFsweDAwMDA3ZjNm
NmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTUyXSBSZWNlaXZl
ZCBjb250cm9sIGNvbW1hbmQ6ICdzZXRVU1JQVGltZU5vdyAwLjAnClsyMDIxLTA2LTAzIDE5
OjI1OjAzLjMxMjQ1N10gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFNldHRpbmcg
VVNSUCB0aW1lIHRvIDAuMDAwMDAwIE5PVy4uLgpbMjAyMS0wNi0wMyAxOToyNTowMy4zMTI3
NTNdIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0
LTU2OTUyXSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMy4z
MTUyNzBdIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVw
b3J0LTU2OTUyXSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdnZXRVU1JQVGltZScKWzIw
MjEtMDYtMDMgMTk6MjU6MDMuMzE1NDU4XSBbMHgwMDAwN2YzZjZlZDE5NjQwXSBbaW5mb10g
ICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1Ml0gV2FpdGluZyBmb3IgY29tbWFuZC4uLgoK
WzIwMjEtMDYtMDMgMTk6MjU6MDMuMzE1NTE0XSBbMHgwMDAwN2YzZjZkNTE2NjQwXSBbaW5m
b10gICAgW1Nlc3Npb24tcmVtb3RlcG9ydC01Njk1OF0gUmVjZWl2ZWQgY29udHJvbCBjb21t
YW5kOiAnZ2V0VVNSUFRpbWUnClsyMDIxLTA2LTAzIDE5OjI1OjAzLjMxNTY1Nl0gWzB4MDAw
MDdmM2Y2ZDUxNjY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5NThdIFdh
aXRpbmcgZm9yIGNvbW1hbmQuLi4KClsyMDIxLTA2LTAzIDE5OjI1OjAzLjMyNzg0Nl0gWzB4
MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFtTZXNzaW9uLXJlbW90ZXBvcnQtNTY5NTJd
IFJlY2VpdmVkIGNvbnRyb2wgY29tbWFuZDogJ2dldFVTUlBUaW1lJwpbMjAyMS0wNi0wMyAx
OToyNTowMy4zMjgwODBdIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lv
bi1yZW1vdGVwb3J0LTU2OTUyXSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0w
MyAxOToyNTowMy4zNzAzNjNdIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vz
c2lvbi1yZW1vdGVwb3J0LTU2OTUyXSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdzZXRD
b21tYW5kVGltZSAwLjIxNTE5MjAwMDAwMDAwMDAyJwpbMjAyMS0wNi0wMyAxOToyNTowMy4z
NzA1MTddIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVw
b3J0LTU2OTUyXSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTow
My40MTE1OTldIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1v
dGVwb3J0LTU2OTU4XSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdzZXRDb21tYW5kVGlt
ZSAwLjIxNTE5MjAwMDAwMDAwMDAyJwpbMjAyMS0wNi0wMyAxOToyNTowMy40MTE4MjZdIFsw
eDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4
XSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMy40MTMwNDBd
IFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2
OTUyXSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdzZXRUWENlbnRlckZyZXF1ZW5jeSA1
LjlFOSAyMDAwMDAwLjAnClsyMDIxLTA2LTAzIDE5OjI1OjAzLjQxMzE4OV0gWzB4MDAwMDdm
M2Y2ZWQxOTY0MF0gW2luZm9dICAgIFNldHRpbmcgVFggRnJlcTogNTkwMC4wMDAwMDAgTUh6
IChMTyBvZmZzZXQ6IDIuMDAwMDAwIE1IeikuLi4KWzIwMjEtMDYtMDMgMTk6MjU6MDMuNDQz
ODQyXSBbMHgwMDAwN2YzZjZlZDE5NjQwXSBbaW5mb10gICAgQWN0dWFsIFRYIEZyZXE6IDU5
MDAuMDAwMDAwIE1Iei4uLgpbMjAyMS0wNi0wMyAxOToyNTowMy40NDQwNDFdIFsweDAwMDA3
ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTUyXSBXYWl0
aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMy40NDU0OTldIFsweDAw
MDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBS
ZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdzZXRSWENlbnRlckZyZXF1ZW5jeSA1LjlFOSAy
MDAwMDAwLjAnClsyMDIxLTA2LTAzIDE5OjI1OjAzLjQ0NTc1NV0gWzB4MDAwMDdmM2Y2ZDUx
NjY0MF0gW2luZm9dICAgIFNldHRpbmcgUlggRnJlcTogNTkwMC4wMDAwMDAgTUh6IChMTyBv
ZmZzZXQ6IDIuMDAwMDAwIE1IeikuLi4KWzIwMjEtMDYtMDMgMTk6MjU6MDMuNTc3OTMzXSBb
MHgwMDAwN2YzZjZkNTE2NjQwXSBbaW5mb10gICAgQWN0dWFsIFJYIEZyZXE6IDU5MDAuMDAw
MDAwIE1Iei4uLgpbMjAyMS0wNi0wMyAxOToyNTowMy41NzgxMDRdIFsweDAwMDA3ZjNmNmQ1
MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBXYWl0aW5nIGZv
ciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMy41NzkxNTddIFsweDAwMDA3ZjNm
NmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTUyXSBSZWNlaXZl
ZCBjb250cm9sIGNvbW1hbmQ6ICdjbGVhckNvbW1hbmRUaW1lJwpbMjAyMS0wNi0wMyAxOToy
NTowMy41Nzk0MDNdIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1y
ZW1vdGVwb3J0LTU2OTUyXSBXYWl0aW5nIGZvciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAx
OToyNTowMy41ODAyNjRdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lv
bi1yZW1vdGVwb3J0LTU2OTU4XSBSZWNlaXZlZCBjb250cm9sIGNvbW1hbmQ6ICdjbGVhckNv
bW1hbmRUaW1lJwpbMjAyMS0wNi0wMyAxOToyNTowMy41ODA0MzldIFsweDAwMDA3ZjNmNmQ1
MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBXYWl0aW5nIGZv
ciBjb21tYW5kLi4uCgpbMjAyMS0wNi0wMyAxOToyNTowMy41OTgzNDldIFsweDAwMDA3ZjNm
NmQ1MTY2NDBdIFtpbmZvXSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTU4XSBSZWNlaXZl
ZCBjb250cm9sIGNvbW1hbmQ6ICdyZWNlaXZlU2FtcGxlcyAxMDAwMDAwMCA1LjcxNTE5MicK
WzIwMjEtMDYtMDMgMTk6MjU6MDMuNTk4ODgzXSBbMHgwMDAwN2YzZjZkNTE2NjQwXSBbaW5m
b10gICAgUlggTE8gbG9ja2VkClsyMDIxLTA2LTAzIDE5OjI1OjAzLjU5OTI3M10gWzB4MDAw
MDdmM2Y2ZDUxNjY0MF0gW2luZm9dICAgIFNlbnNvciAncmVmX2xvY2tlZCc6IFJlZjogbG9j
a2VkClsyMDIxLTA2LTAzIDE5OjI1OjAzLjU5OTMzNl0gWzB4MDAwMDdmM2Y2ZDUxNjY0MF0g
W2luZm9dICAgIFJlY2VpdmVTYW1wbGVzOiByZWNlaXZpbmcgMTAwMDAwMDAgc2FtcGxlcwpb
MjAyMS0wNi0wMyAxOToyNTowMy42MzY0MDFdIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZv
XSAgICBbU2Vzc2lvbi1yZW1vdGVwb3J0LTU2OTUyXSBSZWNlaXZlZCBjb250cm9sIGNvbW1h
bmQ6ICd0cmFuc21pdFNhbXBsZXMgQ29uc3RhbnRJUSAxMDAwMDAwMCA1LjcxNTE5MicKWzIw
MjEtMDYtMDMgMTk6MjU6MDMuNjM2NjU1XSBbMHgwMDAwN2YzZjZlZDE5NjQwXSBbaW5mb10g
ICAgVFggTE8gbG9ja2VkClsyMDIxLTA2LTAzIDE5OjI1OjAzLjYzNjg4MV0gWzB4MDAwMDdm
M2Y2ZWQxOTY0MF0gW2luZm9dICAgIFNlbnNvciAncmVmX2xvY2tlZCc6IFJlZjogbG9ja2Vk
ClsyMDIxLTA2LTAzIDE5OjI1OjAzLjYzNzA3Ml0gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2lu
Zm9dICAgIFRyYW5zbWl0U2FtcGxlczogR2VuZXJhdGluZyAxMDAwMDAwMCBzYW1wbGVzLCBj
dXJ0aW1lOiAwLjMyNDIxNSBkZWFkbGluZTogNS43MTUxOQpbMjAyMS0wNi0wMyAxOToyNTow
My43NTg2NjBdIFsweDAwMDA3ZjNmNmQ1MTY2NDBdIFtpbmZvXSAgICBSZWNlaXZlU2FtcGxl
czogUlggYnVmZmVyIHNpemUgPSAyMDQwIHNhbXBsZXMKWzIwMjEtMDYtMDMgMTk6MjU6MDQu
MDEyOTY4XSBbMHgwMDAwN2YzZjZlZDE5NjQwXSBbaW5mb10gICAgVHJhbnNtaXR0aW5nIDEw
MDAwMDAwIHNhbXBsZXMsIGN1cnRpbWUgQCAwLjcwMDA4MQpbMjAyMS0wNi0wMyAxOToyNTow
NC4wMTMxNjldIFsweDAwMDA3ZjNmNmVkMTk2NDBdIFtpbmZvXSAgICBUcmFuc21pdFNhbXBs
ZXM6IFRYIGJ1ZmZlciBzaXplID0gMjA0MCBzYW1wbGVzClsyMDIxLTA2LTAzIDE5OjI1OjE4
Ljk3MTk5M10gWzB4MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIFdhaXRpbmcgZm9yIGFz
eW5jIGJ1cnN0IEFDSyAoVVNSUCB0aW1lID0gMTUuNjU4OSkKWzIwMjEtMDYtMDMgMTk6MjU6
MTguOTg5MjI2XSBbMHgwMDAwN2YzZjZkNTE2NjQwXSBbaW5mb10gICAgRG9uZSAoY29sbGVj
dGVkIDEwMDAwMDAwIHNhbXBsZXMpClsyMDIxLTA2LTAzIDE5OjI1OjE5LjAyODE1OV0gWzB4
MDAwMDdmM2Y2ZWQxOTY0MF0gW2luZm9dICAgIEdvdCBUWCBCdXJzdCBBQ0sgQCBVU1JQIHRp
bWUgMTUuNzE1Mgo=
--------------36ABA12EA56D3AA51C47579F
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------36ABA12EA56D3AA51C47579F--
