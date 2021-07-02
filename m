Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8608B3B9D44
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 10:01:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BF603845D7
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 04:01:21 -0400 (EDT)
Received: from cc.mail.osaka-u.ac.jp (cc-ext.ccc.osaka-u.ac.jp [133.1.138.214])
	by mm2.emwd.com (Postfix) with SMTP id 99ECA38457E
	for <usrp-users@lists.ettus.com>; Fri,  2 Jul 2021 04:00:29 -0400 (EDT)
Received: (qmail 628 invoked by uid 0); 2 Jul 2021 17:00:26 +0900
X-Qmail-Scanner-Diagnostics: from 106.154.131.140 (viktor+ist@106.154.131.140) by m27 (envelope-from <viktor@ist.osaka-u.ac.jp>, uid 0) with qmail-scanner-2.11
 (clamdscan: 0.99.4/26096.  
 Clear:RC:0(106.154.131.140):.
 Processed in 0.09504 secs); 02 Jul 2021 08:00:26 -0000
X-Qmail-Scanner-Mail-From: viktor@ist.osaka-u.ac.jp via m27
X-Qmail-Scanner: 2.11 (Clear:RC:0(106.154.131.140):. Processed in 0.09504 secs)
Received: from unknown (HELO v-prec.higashi-local) (viktor+ist@106.154.131.140)
  by 172.30.102.167 with SMTP; 2 Jul 2021 17:00:25 +0900
To: usrp-users@lists.ettus.com
References: <CAAg5+Mx13UALQeVb1mYs71NREpXHnJ3s5cMW--3FL9Ox81PWHA@mail.gmail.com>
From: Viktor Erdelyi <viktor@ist.osaka-u.ac.jp>
Message-ID: <76b322bd-be80-cd4a-ef43-9ef752edbc93@ist.osaka-u.ac.jp>
Date: Fri, 2 Jul 2021 17:00:25 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAAg5+Mx13UALQeVb1mYs71NREpXHnJ3s5cMW--3FL9Ox81PWHA@mail.gmail.com>
Content-Language: en-US
X-matriXscan-msec-AV: Clean
X-odins-Action: Approve
X-odins-spam: Uncategorized
Message-ID-Hash: IELIAJHDDXTAKI3LXTZ7OIFGYSVAJIUP
X-Message-ID-Hash: IELIAJHDDXTAKI3LXTZ7OIFGYSVAJIUP
X-MailFrom: viktor@ist.osaka-u.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0.0 released!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IELIAJHDDXTAKI3LXTZ7OIFGYSVAJIUP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3207331740942534715=="

This is a multi-part message in MIME format.
--===============3207331740942534715==
Content-Type: multipart/alternative;
 boundary="------------B5C1E7C1DEFED5F3EAFD3EB3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B5C1E7C1DEFED5F3EAFD3EB3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear all,

Has the LO sharing API changed in UHD 4.1? I have used the following=20
code in UHD 4.0 to share LOs on a USRP X310 with 2 TwinRX installed, and=20
it worked (all 4 channels were in sync, i.e. more or less consistent=20
phase offset). Now if I switch to UHD 4.1, channels 0 and 1 keep=20
drifting away from channels 2 and 3. It seems like the RF A and RF B=20
frontends are not in sync, but the 2 channels within them are in sync.

// based on https://github.com/EttusResearch/uhd/issues/237 usrp->set_rx_=
lo_export_enabled(true,uhd::usrp::multi_usrp::ALL_LOS,0);
usrp->set_rx_lo_source("companion",uhd::usrp::multi_usrp::ALL_LOS,1);
usrp->set_rx_lo_source("external",uhd::usrp::multi_usrp::ALL_LOS,2);
usrp->set_rx_lo_source("external",uhd::usrp::multi_usrp::ALL_LOS,3);

Thanks,
Viktor

On 7/1/21 11:33 PM, Aaron Rossetto wrote:
> Hello USRP community,
>
> On behalf on everyone at NI/Ettus Research, I am very proud to=20
> announce the release of UHD 4.1, the latest version of the USRP=20
> Hardware Driver! As my colleague Haydn Nelson posted to the list=20
> earlier in the week, UHD 4.1 offers support for the newest member of=20
> the USRP family, the NI Ettus USRP X410. This new generation of USRP=20
> provides the highest performance of any USRP to date, sporting 4x4=20
> TX/RX channels, 400 MHz instantaneous bandwidth per channel, and a=20
> tunable range from 1 MHz to 7.2 GHz, to name just a few of its=20
> best-in-class features. Check out the Ettus Research website[1] to=20
> learn more about the X410. Beyond support for the X410, however, UHD=20
> 4.1 also provides numerous bug fixes and stability improvements=20
> benefitting the entire stable of USRP devices. See the changelog=20
> associated with the v4.1.0.0 tag[2] for a more comprehensive list of=20
> changes.
>
> While=C2=A0we strive to ensure the highest quality of UHD releases, it =
is=20
> possible that some gremlins may have found their way into the process.=20
> We appreciate your patience and understanding as we shake out any=20
> remaining bugs. If you encounter problems, please let us know by=20
> filing a issue against UHD on the GitHub repo[3] or by posting to the=20
> USRP-users mailing list so that we can get it resolved.
>
> Finally, we hope to see you in person or virtually at GNU Radio=20
> Conference 2021[4], taking place 20-24 September 2021.
>
> With best regards,
> Aaron Rossetto
>
> [1]=20
> https://www.ettus.com/introducing-the-most-advanced-sdr-the-ni-ettus-us=
rp-x410/=20
> <https://www.ettus.com/introducing-the-most-advanced-sdr-the-ni-ettus-u=
srp-x410/>
> [2] https://github.com/EttusResearch/uhd/releases/tag/v4.1.0.0=20
> <https://github.com/EttusResearch/uhd/releases/tag/v4.1.0.0>
> [3] https://github.com/EttusResearch/uhd/issues/=20
> <https://github.com/EttusResearch/uhd/issues/>
> [4] https://events.gnuradio.org/event/8/=20
> <https://events.gnuradio.org/event/8/>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------B5C1E7C1DEFED5F3EAFD3EB3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Dear all,</p>
    <p>Has the LO sharing API changed in UHD 4.1? I have used the
      following code in UHD 4.0 to share LOs on a USRP X310 with 2
      TwinRX installed, and it worked (all 4 channels were in sync, i.e.
      more or less consistent phase offset). Now if I switch to UHD 4.1,
      channels 0 and 1 keep drifting away from channels 2 and 3. It
      seems like the RF A and RF B frontends are not in sync, but the 2
      channels within them are in sync.<br>
    </p>
    <pre style=3D"background-color:#ffffff;color:#080808;font-family:'Jet=
Brains Mono',monospace;font-size:11.3pt;"><span style=3D"color:#8c8c8c;fo=
nt-style:italic;">// based on <a class=3D"moz-txt-link-freetext" href=3D"=
https://github.com/EttusResearch/uhd/issues/237">https://github.com/Ettus=
Research/uhd/issues/237</a>
</span><span style=3D"color:#660e7a;">usrp</span><span style=3D"color:#00=
8080;">-&gt;</span>set_rx_lo_export_enabled(<span style=3D"color:#0033b3;=
">true</span>, <span style=3D"color:#008080;">uhd</span>::<span style=3D"=
color:#008080;">usrp</span>::<span style=3D"color:#008080;">multi_usrp</s=
pan>::<span style=3D"color:#660e7a;">ALL_LOS</span>, <span style=3D"color=
:#1750eb;">0</span>);
<span style=3D"color:#660e7a;">usrp</span><span style=3D"color:#008080;">=
-&gt;</span>set_rx_lo_source(<span style=3D"color:#067d17;">"companion"</=
span>, <span style=3D"color:#008080;">uhd</span>::<span style=3D"color:#0=
08080;">usrp</span>::<span style=3D"color:#008080;">multi_usrp</span>::<s=
pan style=3D"color:#660e7a;">ALL_LOS</span>, <span style=3D"color:#1750eb=
;">1</span>);
<span style=3D"color:#660e7a;">usrp</span><span style=3D"color:#008080;">=
-&gt;</span>set_rx_lo_source(<span style=3D"color:#067d17;">"external"</s=
pan>, <span style=3D"color:#008080;">uhd</span>::<span style=3D"color:#00=
8080;">usrp</span>::<span style=3D"color:#008080;">multi_usrp</span>::<sp=
an style=3D"color:#660e7a;">ALL_LOS</span>, <span style=3D"color:#1750eb;=
">2</span>);
<span style=3D"color:#660e7a;">usrp</span><span style=3D"color:#008080;">=
-&gt;</span>set_rx_lo_source(<span style=3D"color:#067d17;">"external"</s=
pan>, <span style=3D"color:#008080;">uhd</span>::<span style=3D"color:#00=
8080;">usrp</span>::<span style=3D"color:#008080;">multi_usrp</span>::<sp=
an style=3D"color:#660e7a;">ALL_LOS</span>, <span style=3D"color:#1750eb;=
">3</span>);</pre>
    <div class=3D"moz-cite-prefix">Thanks,</div>
    <div class=3D"moz-cite-prefix">Viktor<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 7/1/21 11:33 PM, Aaron Rossetto
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAg5+Mx13UALQeVb1mYs71NREpXHnJ3s5cMW--3FL9Ox81PWHA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">Hello
          USRP community,</div>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">On
          behalf on everyone at NI/Ettus Research, I am very proud to
          announce the release of UHD 4.1, the latest version of the
          USRP Hardware Driver! As my colleague Haydn Nelson posted to
          the list earlier in the week, UHD 4.1 offers support for the
          newest member of the USRP family, the NI Ettus USRP X410. This
          new generation of USRP provides the highest performance of any
          USRP to date, sporting 4x4 TX/RX channels, 400 MHz
          instantaneous bandwidth per channel, and a tunable range from
          1 MHz to 7.2 GHz, to name just a few of its best-in-class
          features. Check out the Ettus Research website[1] to learn
          more about the X410. Beyond support for the X410, however, UHD
          4.1 also provides numerous bug fixes and stability
          improvements benefitting the entire stable of USRP devices.
          See the changelog associated with the v4.1.0.0 tag[2] for a
          more comprehensive list of changes.<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f"><br>
        </div>
        <div><span class=3D"gmail_default"
            style=3D"font-family:arial,sans-serif">While</span><span
            class=3D"gmail_default" style=3D"font-family:arial,sans-serif=
">=C2=A0we
            strive to ensure the highest quality of UHD releases, it is
            possible that some gremlins may have found their way into
            the process. We appreciate your patience and understanding
            as we shake out any remaining bugs. If you encounter
            problems, please let us know by filing a issue against UHD
            on the GitHub repo[3] or by posting to the USRP-users
            mailing list so that we can get it resolved.<br>
          </span></div>
        <div><span class=3D"gmail_default"
            style=3D"font-family:arial,sans-serif"><br>
          </span></div>
        <div><span class=3D"gmail_default"
            style=3D"font-family:arial,sans-serif">Finally, we hope to se=
e
            you in person or virtually at GNU Radio Conference 2021[4],
            taking place 20-24 September 2021.<br>
          </span></div>
        <div><span class=3D"gmail_default"
            style=3D"font-family:arial,sans-serif"><br>
          </span></div>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">With
          best regards,</div>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">Aaron
          Rossetto<br>
        </div>
        <br>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">[1]
          <a
href=3D"https://www.ettus.com/introducing-the-most-advanced-sdr-the-ni-et=
tus-usrp-x410/"
            moz-do-not-send=3D"true">https://www.ettus.com/introducing-th=
e-most-advanced-sdr-the-ni-ettus-usrp-x410/</a></div>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">[2]
          <a
            href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.=
1.0.0"
            moz-do-not-send=3D"true">https://github.com/EttusResearch/uhd=
/releases/tag/v4.1.0.0</a></div>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">[3]
          <a href=3D"https://github.com/EttusResearch/uhd/issues/"
            moz-do-not-send=3D"true">https://github.com/EttusResearch/uhd=
/issues/</a></div>
        <div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">[4]
          <a href=3D"https://events.gnuradio.org/event/8/"
            moz-do-not-send=3D"true">https://events.gnuradio.org/event/8/=
</a></div>
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
  </body>
</html>

--------------B5C1E7C1DEFED5F3EAFD3EB3--

--===============3207331740942534715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3207331740942534715==--
