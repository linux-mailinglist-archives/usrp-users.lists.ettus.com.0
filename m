Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C9E3972F8
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 14:04:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 157BA383D08
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 08:04:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BjBzIQBn";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id C66F7383BFB
	for <usrp-users@lists.ettus.com>; Tue,  1 Jun 2021 08:04:06 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id j189so13910401qkf.2
        for <usrp-users@lists.ettus.com>; Tue, 01 Jun 2021 05:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=JQPkPrwxS1NzzZW7mwIO2+ZLSFfy+rmUP5Ox0swCVBs=;
        b=BjBzIQBnpo0WAMxz1tCz4BjBYDTU7j4N0upX7Ezk0LD7nw1hEJR5OsFq0PWKFk61Wv
         MtuA+sPKgXsJlDTR+XdKte3PtCEUS3Sa3kIguneC3m66tn1zeQC60mSSqy8xY6fojuuP
         hkS0jpbLmqis4N2dqwFX5o3xMr6mD22/S+I4xazzNTDg4e3eniU28MUHcP2NK66kNO51
         h9ISKAM3gBpwPdWCYsiDzxDkcw1qBLY9ACc3lKfbZ7grW+fWSuKqobJeDFtLiICb0/Yg
         RBOw1SkKXMA6JEiEtdw9WcE7wLFL1R9Bo1is74WCAG1i7ZYs3HxXRGearCBae193/4Wz
         wcog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=JQPkPrwxS1NzzZW7mwIO2+ZLSFfy+rmUP5Ox0swCVBs=;
        b=mPjkymD2iED+ns0N1KR2lDsMyDCL/DoxOsBoxXfGhLnh3LbJWe68Qnp4Py9PzjcoV/
         TSW+56zd11lnQPyiAccozac264kZH1jpyhV22cetuP9m8MG4bjbiMPJ5oQb78EMoBlvQ
         kmDFdm3u+SFqH1AIwDKUI5g1p6osAbhTH0KOco2cYq8AXTr1Q4PAJEdvMfoSDxEG036Q
         XbHWxl9+V57l3hXcfieQ5ELnKnEPHoZYHgVVrxSmWl9BbSrO0dlB6qrkJPz8DKhBFsuE
         gXsKCgy+v+Bm/phXy+RnjZ5e0wHynSS2K9Nqi3yAel43OOtjghbze0dJYhEFhzOEbd9n
         krtg==
X-Gm-Message-State: AOAM53079mis87FV4ZvKcloMyws/tgwYw5budQI5Bbvo28mL+MciD748
	LTLRAMjSVqHQuNVE8f3WWKzQZfTs3zE=
X-Google-Smtp-Source: ABdhPJxRXYKg8uhNUU1HjrUhMS3OhTGwFOPg96scdhHjDknD18QQOILRL5dlf4paalFd0+8t1K7PoA==
X-Received: by 2002:a05:620a:22ea:: with SMTP id p10mr6432293qki.131.1622549045856;
        Tue, 01 Jun 2021 05:04:05 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id f13sm11166738qkk.107.2021.06.01.05.04.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jun 2021 05:04:05 -0700 (PDT)
Message-ID: <60B62234.3060306@gmail.com>
Date: Tue, 01 Jun 2021 08:04:04 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1622487334616.15025@isc.tuc.gr>,<3C39A314-B292-4CEF-BF8E-7212C1687F43@gmail.com> <1622488640848.60454@isc.tuc.gr>,<60B556B2.3060508@gmail.com>,<1622527780949.34418@isc.tuc.gr> <1622530035508.27235@isc.tuc.gr>
In-Reply-To: <1622530035508.27235@isc.tuc.gr>
Message-ID-Hash: CN3AYJ2SKONEAZZ6XF4ZG4CJNG467NXG
X-Message-ID-Hash: CN3AYJ2SKONEAZZ6XF4ZG4CJNG467NXG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CN3AYJ2SKONEAZZ6XF4ZG4CJNG467NXG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2307835244497566504=="

This is a multi-part message in MIME format.
--===============2307835244497566504==
Content-Type: multipart/alternative;
 boundary="------------080600020202080201050202"

This is a multi-part message in MIME format.
--------------080600020202080201050202
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/01/2021 02:47 AM, Skyvalakis Konstantinos wrote:
>
> I managed to fix that last fifo ctrl time out error by adding as many=20
> Tx as Rx channels like you said.
>
>
> My code now executes without any errors from the UHD at the=20
> beginning, but as soon as it does I get something=20
> like "LLLLLLUUULLLLULUL" on the terminal.
>
The "L" means 'late packet'.  Which happens when your TX packet is=20
tagged to be transmitted at a particular time, and that time
   has already passed.

The 'U' is under-run, which means that your code isn't "keeping up" with=20
the TX rate--which at 1Msps means something is
   terribly wrong.

Are you running your RX and TX in separate threads?  If not, you really=20
should.


>
> My ADC rate is 2MHz and my DAC rate is 1MHz in case that matters.
>
>
> Could I fix all of these problems if I had a MIMO cable to connect the=20
> 2 devices?
>
> =E2=80=8B
>
> -----------------------------------------------------------------------=
-
> *From:* Skyvalakis Konstantinos
> *Sent:* Tuesday, June 1, 2021 9:09 AM
> *To:* Marcus D. Leech; usrp-users@lists.ettus.com
> *Subject:* Re: USRP N200
>
> Ok I will try this last advice. I will put as many Tx as Rx channels=20
> and I will let you know.
>
>
> Regarding the error you asked me for, the complete output is:
>
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> Traceback (most recent call last):
>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 172, in=20
> <module>
>     main_block =3D reader_top_block()
>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 141, in=20
> __init__
>     self.usrp_init()
>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 56, in=20
> usrp_init
>     self.sink.set_time_unknown_pps(uhd.time_spec())
>   File=20
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",=20
> line 4814, in set_time_unknown_pps
>     return _uhd_swig.usrp_sink_sptr_set_time_unknown_pps(self, time_spe=
c)
> RuntimeError: RuntimeError: fifo ctrl timed out looking for acks
> [ERROR] [UHD] Exception caught in safe-call.
>   in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()
>   at /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:=
54
> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, June 1, 2021 12:35 AM
> *To:* Skyvalakis Konstantinos; usrp-users@lists.ettus.com
> *Subject:* Re: USRP N200
> On 05/31/2021 03:17 PM, Skyvalakis Konstantinos wrote:
>>
>> Ok, I did the upgrade and all the necessary rebuilds.
>>
>>
>> The error persists this time however with more information.
>>
>>
>> RuntimeError: RuntimeError: fifo ctrl timed out looking for acks
>> [ERROR] [UHD] Exception caught in safe-call.
>>   in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()
>>   at /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp=
:54
>> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks=
=E2=80=8B
>>
>>
>>
> Also, when you have a TX/RX scenario like this, for some hardware, you=20
> need to have as many TX channels as RX channels.
>
> So, establish your "sink" such that it talks to both devices, and then=20
> just stuff the buffer with 0s for the channel you're not using.
>
>


--------------080600020202080201050202
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 06/01/2021 02:47 AM, Skyvalakis
      Konstantinos wrote:<br>
    </div>
    <blockquote cite=3D"mid:1622530035508.27235@isc.tuc.gr" type=3D"cite"=
>
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none"><!-- p { margin-top=
: 0px; margin-bottom: 0px; }--></style>
      <p>I managed to fix that last fifo ctrl time out error by adding
        as many Tx as Rx channels like you said.<br>
      </p>
      <p><br>
      </p>
      <p>My code now executes without any errors from the UHD at the
        beginning,=C2=A0but as soon as it does I get something
        like=C2=A0"LLLLLLUUULLLLULUL" on the terminal.<br>
      </p>
    </blockquote>
    The "L" means 'late packet'.=C2=A0 Which happens when your TX packet =
is
    tagged to be transmitted at a particular time, and that time<br>
    =C2=A0 has already passed.<br>
    <br>
    The 'U' is under-run, which means that your code isn't "keeping up"
    with the TX rate--which at 1Msps means something is<br>
    =C2=A0 terribly wrong.<br>
    <br>
    Are you running your RX and TX in separate threads?=C2=A0 If not, you
    really should.=C2=A0 <br>
    <br>
    <br>
    <blockquote cite=3D"mid:1622530035508.27235@isc.tuc.gr" type=3D"cite"=
>
      <p>
      </p>
      <p><br>
      </p>
      <p>My ADC rate is 2MHz and=C2=A0my DAC rate is 1MHz in case that
        matters.<br>
      </p>
      <p><br>
      </p>
      <p>Could I fix all of these problems if I had a MIMO cable to
        connect the 2 devices?<br>
      </p>
      <p>=E2=80=8B<br>
      </p>
      <div dir=3D"ltr" style=3D"font-size:12pt; color:#000000;
        background-color:#FFFFFF;
        font-family:Calibri,Arial,Helvetica,sans-serif">
        <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
        <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11=
pt"
            color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b>
            Skyvalakis Konstantinos<br>
            <b>Sent:</b> Tuesday, June 1, 2021 9:09 AM<br>
            <b>To:</b> Marcus D. Leech; <a class=3D"moz-txt-link-abbrevia=
ted" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a><br>
            <b>Subject:</b> Re: USRP N200</font>
          <div>=C2=A0</div>
        </div>
        <div>
          <p>Ok I will try this last advice. I will put=C2=A0as many Tx a=
s Rx
            channels and I will let you know.<br>
          </p>
          <p><br>
          </p>
          <p>Regarding the error you asked me for, the complete output
            is:<br>
          </p>
          <p><br>
          </p>
          <div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
            UHD_3.15.0.HEAD-0-gaea0e2de</div>
          <div>[INFO] [USRP2] Opening a USRP2/N-Series device...</div>
          <div>[INFO] [USRP2] Current recv frame size: 1472 bytes</div>
          <div>[INFO] [USRP2] Current send frame size: 1472 bytes</div>
          <div>[INFO] [USRP2] Opening a USRP2/N-Series device...</div>
          <div>[INFO] [USRP2] Current recv frame size: 1472 bytes</div>
          <div>[INFO] [USRP2] Current send frame size: 1472 bytes</div>
          <div>[INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A01) catch time trans=
ition at pps
            edge</div>
          <div>[INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A02) set times next p=
ps
            (synchronously)</div>
          <div>[INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A01) catch time trans=
ition at pps
            edge</div>
          <div>Traceback (most recent call last):</div>
          <div>=C2=A0 File "./reader_monostatic_with_MIMO_sniffer_v5.py",
            line 172, in &lt;module&gt;</div>
          <div>=C2=A0 =C2=A0 main_block =3D reader_top_block()</div>
          <div>=C2=A0 File "./reader_monostatic_with_MIMO_sniffer_v5.py",
            line 141, in __init__</div>
          <div>=C2=A0 =C2=A0 self.usrp_init()</div>
          <div>=C2=A0 File "./reader_monostatic_with_MIMO_sniffer_v5.py",
            line 56, in usrp_init</div>
          <div>=C2=A0 =C2=A0 self.sink.set_time_unknown_pps(uhd.time_spec=
())</div>
          <div>=C2=A0 File
            "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig=
.py",
            line 4814, in set_time_unknown_pps</div>
          <div>=C2=A0 =C2=A0 return
            _uhd_swig.usrp_sink_sptr_set_time_unknown_pps(self,
            time_spec)</div>
          <div>RuntimeError: RuntimeError: fifo ctrl timed out looking
            for acks</div>
          <div>[ERROR] [UHD] Exception caught in safe-call.</div>
          <div>=C2=A0 in virtual
            usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()</div>
          <div>=C2=A0 at
            /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl=
.cpp:54</div>
          <div>this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed
            out looking for acks</div>
          <div><br>
          </div>
          <div style=3D"color:rgb(33,33,33)">
            <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%"=
>
            <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                style=3D"font-size:11pt" color=3D"#000000" face=3D"Calibr=
i,
                sans-serif"><b>From:</b> Marcus D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
                <b>Sent:</b> Tuesday, June 1, 2021 12:35 AM<br>
                <b>To:</b> Skyvalakis Konstantinos;
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: USRP N200</font>
              <div>=C2=A0</div>
            </div>
            <div>
              <div class=3D"moz-cite-prefix">On 05/31/2021 03:17 PM,
                Skyvalakis Konstantinos wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0px;
	margin-bottom:0px}
-->
</style>
                <p>Ok, I did the upgrade and all the necessary rebuilds.<=
br>
                </p>
                <p><br>
                </p>
                <p>The error persists this time however with more
                  information.<br>
                </p>
                <p><br>
                </p>
                <div>RuntimeError: RuntimeError: fifo ctrl timed out
                  looking for acks</div>
                <div>[ERROR] [UHD] Exception caught in safe-call.</div>
                <div>=C2=A0 in virtual
                  usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()</div>
                <div>=C2=A0 at
                  /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fif=
o_ctrl.cpp:54</div>
                <div>this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl
                  timed out looking for acks=E2=80=8B<br>
                </div>
                <p><br>
                </p>
                <br>
              </blockquote>
              Also, when you have a TX/RX scenario like this, for some
              hardware, you need to have as many TX channels as RX
              channels.<br>
              <br>
              So, establish your "sink" such that it talks to both
              devices, and then just stuff the buffer with 0s for the
              channel you're not using.<br>
              <br>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080600020202080201050202--

--===============2307835244497566504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2307835244497566504==--
