Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B82BACB3F
	for <lists+usrp-users@lfdr.de>; Sun,  8 Sep 2019 08:59:26 +0200 (CEST)
Received: from [::1] (port=55910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6rAP-0005zg-0Y; Sun, 08 Sep 2019 02:59:21 -0400
Received: from mail-io1-f46.google.com ([209.85.166.46]:46904)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rajeshgps@gmail.com>) id 1i6rAL-0005v1-0H
 for usrp-users@lists.ettus.com; Sun, 08 Sep 2019 02:59:17 -0400
Received: by mail-io1-f46.google.com with SMTP id x4so21784363iog.13
 for <usrp-users@lists.ettus.com>; Sat, 07 Sep 2019 23:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bmh8yBxgIwPT/MJ774bHGrv5DXu9WDBZIXinyGAUICU=;
 b=rHGe33NcYYGar92Jq8yMgu8nmmCh3CJdSn2e1FttHWw0H5sTF5OQkambfJQWCVuHkr
 64sJvMOcxiPPNcjuhHWHKC4Qhkyh6GfoM0WukfgI5mkEjfm8uNXAuQ8uJJBIbgYQGSkU
 SFK6rw6dtEJS4Kt9+gZnR5r8QTc56f5PHjE6Q7zbsKRLq5mDEC/A9+4SfDOZRkCmJxH1
 K+Zgv2wM1VIF5LAGDTg6+fqwiTxYN/wCuMIGpiUBn1OfUgIaj6dzIRXAYxTB4W5rRCGK
 mTPY849hns4BFAfXA+GkYjkxChaJfUAgImFqGAQ0xZUwxr9bUgcZmz7u48VZ9/wSN5tM
 9TxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bmh8yBxgIwPT/MJ774bHGrv5DXu9WDBZIXinyGAUICU=;
 b=OLu+3udLLx1Z6Ryh31xFLs1vJfiewvS7iRHVoTAMXNwAZpnZmwmyr2ssxvb82EByLt
 BCbqZIN6J0GPVlWdptkz6gM/19LeZA1Q3GcqJ5Rj2nDKvDyTYXhbR0QWXh1Nvui6OwUf
 p2vjYc9zj+MC7XBD8ttjo4Z67AmlHs4WYgOOcV1wrC4VgaxL7LecnrQM7Q23ci8XVJBn
 TJJ5LTao0250XKJR8BRZj4PKW8LRcKGLFdW7VeyCFQLna+FERgPbO6383XgbfcamLbpI
 olEXGhsHqSBfA1N2TI1plVD6XFEgh72XMmS4oiOBZ5Pt7e7faK1NfElzx/imqT6gA5Ek
 tdOQ==
X-Gm-Message-State: APjAAAWeSsIiMsE6f3ThupSs4AqLR7vuXEAKNa7hPHA4Su5dZH5gjjcy
 AVXK5U83Fp8/RdjrZyTQbZ5IWP/GqGr91pqcsy0=
X-Google-Smtp-Source: APXvYqyFdy5AmqxlxMKaf7HQR73/OtWFUoeLIl5mGZ2+XHax++OqaO0FBzqSKiGsm85E+TcDbeCzS4iaqz5+hKyBh3o=
X-Received: by 2002:a6b:6010:: with SMTP id r16mr19348187iog.124.1567925915953; 
 Sat, 07 Sep 2019 23:58:35 -0700 (PDT)
MIME-Version: 1.0
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
 <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
 <CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com>
 <62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net>
 <cd4d078a-43f5-8a82-3456-5fc4c86f030f@comcast.net>
 <CADk-HHCJbxV3Px=eu5tZrEC3zVh81QXys46NegQ3V809D+2O3Q@mail.gmail.com>
 <202c637b-1565-5a21-9f76-91a648e211c6@comcast.net>
 <CADk-HHBWC_tzgWBphGjhzmEekSQbo+=WDY+HJ5HumoQHEaQ+Tw@mail.gmail.com>
 <CAGNhwTP4UsJWSOBH3TpRRZpx9pgpLgZ_WCq+4uTsG5QxFm9wHQ@mail.gmail.com>
In-Reply-To: <CAGNhwTP4UsJWSOBH3TpRRZpx9pgpLgZ_WCq+4uTsG5QxFm9wHQ@mail.gmail.com>
Date: Sun, 8 Sep 2019 07:58:24 +0100
Message-ID: <CADk-HHAHE1QBC80GLFwzJja8mPe4o0Xz3mUE4Lrav3qFtjDdNw@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] (no subject)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Dr. Rajesh Tiwari via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Dr. Rajesh Tiwari" <rajeshgps@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7678116212641012141=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7678116212641012141==
Content-Type: multipart/alternative; boundary="000000000000412ebc05920533aa"

--000000000000412ebc05920533aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Michael,

I removed and tried to install properly gnuradio, and I get the following
test fail.
97% tests passed, 10 tests failed out of 364

Total Test time (real) =3D 237.56 sec

The following tests FAILED:
243 - qa_polar_decoder_sc (Failed)
244 - qa_polar_decoder_sc_list (Failed)
245 - qa_polar_decoder_sc_systematic (Failed)
246 - qa_polar_encoder (Failed)
247 - qa_polar_encoder_systematic (Failed)
360 - qa_zeromq_pub (Failed)
361 - qa_zeromq_pubsub (Failed)
362 - qa_zeromq_pushpull (Failed)
363 - qa_zeromq_reqrep (Failed)
364 - qa_zeromq_sub (Failed)
Errors while running CTest
Makefile:107: recipe for target 'test' failed
make: *** [test] Error 8

Any suggestion please. I tried to see some of the previous thread and
suggested to install python-scipy which I did and sounds I have newest
version. Please see below:
python-scipy is already the newest version (0.17.0-1).
The following packages were automatically installed and are no longer
required:
  libcodec2-0.4 libcppunit-1.13-0v5 libcppunit-dev libglade2-0 libglfw3
libgnuradio-analog3.7.9 libgnuradio-atsc3.7.9
  libgnuradio-channels3.7.9 libgnuradio-comedi3.7.9
libgnuradio-digital3.7.9 libgnuradio-dtv3.7.9 libgnuradio-fec3.7.9
libgnuradio-fft3.7.9
  libgnuradio-filter3.7.9 libgnuradio-fosphor3.7.0 libgnuradio-noaa3.7.9
libgnuradio-pager3.7.9 libgnuradio-qtgui3.7.9
  libgnuradio-trellis3.7.9 libgnuradio-video-sdl3.7.9
libgnuradio-vocoder3.7.9 libgnuradio-wavelet3.7.9 libgnuradio-wxgui3.7.9
  libgnuradio-zeromq3.7.9 libgsm1 libjs-jquery-ui libpython3-dev
libpython3.5-dev libqwt-dev libqwt5-qt4 libqwt6abi1 libwxbase3.0-0v5
  libwxgtk3.0-0v5 python-bs4 python-cairo python-cheetah python-cycler
python-dateutil python-glade2 python-gtk2 python-html5lib python-lxml
  python-matplotlib python-matplotlib-data python-networkx python-opengl
python-pyparsing python-qwt5-qt4 python-tz python-wxgtk3.0
  python-wxversion python-yaml python3.5-dev rtl-sdr uhd-host
Use 'sudo apt autoremove' to remove them.
0 to upgrade, 0 to newly install, 0 to remove and 171 not to upgrade.

Regards
Rajesh

On Sat, Sep 7, 2019 at 7:46 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Rajesh - CMake found your GR38 install, not your GR37 install. You
> should pick GR37 or GR38 and go with just it, and remove the one you're n=
ot
> going with. Then, pick the same branch of gr-ieee802-11. Hope this is
> useful! - MLD
>
> On Sat, Sep 7, 2019 at 9:47 AM Dr. Rajesh Tiwari via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Ron,
>>
>> Sounds good, seems a bit progress.
>> I think other than Cmake policy, attached in screenshot I am almost
>> there. Do you think I would need any other requirements?
>>
>> Regards
>> Rajesh
>>
>>
>> On Sat, Sep 7, 2019 at 2:06 PM Ron Economos via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Okay, here's the complete set of instructions.
>>>
>>> git clone https://github.com/bastibl/gr-ieee802-11.git
>>>
>>> cd gr-ieee802-11/
>>>
>>> git checkout maint-3.7
>>>
>>> mkdir build
>>>
>>> cd build
>>>
>>> cmake ../
>>>
>>> make
>>>
>>> sudo make install
>>>
>>> sudo ldconfig
>>>
>>> Make sure you use the correct install prefix in the cmake step. You can
>>> determine the install prefix with:
>>>
>>> gnuradio-config-info --prefix
>>>
>>> cmake ../ will install into the default prefix, which is usr/local. If
>>> you have any other prefix, you need to specify that with the cmake comm=
and.
>>> For example:
>>>
>>> cmake -DCMAKE_INSTALL_PREFIX=3D/usr ../
>>>
>>> Ron
>>> On 9/7/19 05:36, Dr. Rajesh Tiwari wrote:
>>>
>>> Hi Ron,
>>>
>>> Thanks for response. I think I am bit confused here..., I am trying to
>>> install from https://github.com/bastibl/gr-ieee802-11 and I am getting
>>> error.
>>>
>>> Regards
>>> Rajesh
>>>
>>> On Sat, Sep 7, 2019 at 12:07 PM Ron Economos via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Opps, should be:
>>>>
>>>> git checkout maint-3.7
>>>>
>>>> Ron
>>>> On 9/7/19 04:05, Ron Economos via USRP-users wrote:
>>>>
>>>> There's a 3.7 version of gr-ieee802-11. In the gr-ieee802-11 directory=
,
>>>> type:
>>>>
>>>> git checkout maint3.7
>>>>
>>>> Ron
>>>> On 9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:
>>>>
>>>> HI Michael,
>>>>
>>>> Many thanks for prompt response. I encountered problem in installing
>>>> module "gr-ieee802-11" as it seems requiring gnuradio-companion, versi=
on
>>>> 3.8. I am not able to update my GRC version 3.7 to 3.8. Any suggestion=
,
>>>> please let me know.
>>>>
>>>> Regards
>>>> Rajesh
>>>>
>>>> On Fri, Sep 6, 2019 at 5:14 PM Michael Dickens <
>>>> michael.dickens@ettus.com> wrote:
>>>>
>>>>> Hi Rajesh - The block "OFDM Sync Short" is part of the GR out-of-tree
>>>>> (OOT) module "gr-ieee802-11" ... as are many of the other blocks in t=
he
>>>>> image you provided. If that OOT is not installed already, it shouldn'=
t be
>>>>> difficult to do so. Hope this is useful! - MLD
>>>>>
>>>>> On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh Tiwari via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Dear All,
>>>>>>
>>>>>> I am trying to decode IEEE 802.11a OFDM receiver as per GRC block
>>>>>> diagram used in Paper "Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
>>>>>> Receiver for GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong,=
 China.". The
>>>>>> screenshot of block diagram given below, In GRC, I didn't find "OFDM=
 Sync
>>>>>> Short" block, any help would be appreciated.
>>>>>>
>>>>>> "GRC block diagram from Bloessl et al(2013), An IEEE 802.11a/g/p OFD=
M
>>>>>> Receiver for GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong,=
 China"
>>>>>>
>>>>>> Regards
>>>>>> Rajesh
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
>>>>>
>>>>> --
>>>>> Michael Dickens, Mac OS X Programmer
>>>>>
>>>>> Ettus Research Technical Support
>>>>>
>>>>> Email: support@ettus.com
>>>>>
>>>>> Web: http://www.ettus.com
>>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> --
> Michael Dickens, Mac OS X Programmer
>
> Ettus Research Technical Support
>
> Email: support@ettus.com
>
> Web: http://www.ettus.com
>

--000000000000412ebc05920533aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Michael,</div><div><br></div><div>I removed an=
d tried to install properly gnuradio, and I get the following test fail. <b=
r></div><div>97% tests passed, 10 tests failed out of 364<br><br>Total Test=
 time (real) =3D 237.56 sec<br><br>The following tests FAILED:<br>	243 - qa=
_polar_decoder_sc (Failed)<br>	244 - qa_polar_decoder_sc_list (Failed)<br>	=
245 - qa_polar_decoder_sc_systematic (Failed)<br>	246 - qa_polar_encoder (F=
ailed)<br>	247 - qa_polar_encoder_systematic (Failed)<br>	360 - qa_zeromq_p=
ub (Failed)<br>	361 - qa_zeromq_pubsub (Failed)<br>	362 - qa_zeromq_pushpul=
l (Failed)<br>	363 - qa_zeromq_reqrep (Failed)<br>	364 - qa_zeromq_sub (Fai=
led)<br>Errors while running CTest<br>Makefile:107: recipe for target &#39;=
test&#39; failed<br>make: *** [test] Error 8</div><div><br></div><div>Any s=
uggestion please. I tried to see some of the previous thread and suggested =
to install python-scipy which I did and sounds I have newest version. Pleas=
e see below:<br></div><div>python-scipy is already the newest version (0.17=
.0-1).<br>The following packages were automatically installed and are no lo=
nger required:<br>=C2=A0 libcodec2-0.4 libcppunit-1.13-0v5 libcppunit-dev l=
ibglade2-0 libglfw3 libgnuradio-analog3.7.9 libgnuradio-atsc3.7.9<br>=C2=A0=
 libgnuradio-channels3.7.9 libgnuradio-comedi3.7.9 libgnuradio-digital3.7.9=
 libgnuradio-dtv3.7.9 libgnuradio-fec3.7.9 libgnuradio-fft3.7.9<br>=C2=A0 l=
ibgnuradio-filter3.7.9 libgnuradio-fosphor3.7.0 libgnuradio-noaa3.7.9 libgn=
uradio-pager3.7.9 libgnuradio-qtgui3.7.9<br>=C2=A0 libgnuradio-trellis3.7.9=
 libgnuradio-video-sdl3.7.9 libgnuradio-vocoder3.7.9 libgnuradio-wavelet3.7=
.9 libgnuradio-wxgui3.7.9<br>=C2=A0 libgnuradio-zeromq3.7.9 libgsm1 libjs-j=
query-ui libpython3-dev libpython3.5-dev libqwt-dev libqwt5-qt4 libqwt6abi1=
 libwxbase3.0-0v5<br>=C2=A0 libwxgtk3.0-0v5 python-bs4 python-cairo python-=
cheetah python-cycler python-dateutil python-glade2 python-gtk2 python-html=
5lib python-lxml<br>=C2=A0 python-matplotlib python-matplotlib-data python-=
networkx python-opengl python-pyparsing python-qwt5-qt4 python-tz python-wx=
gtk3.0<br>=C2=A0 python-wxversion python-yaml python3.5-dev rtl-sdr uhd-hos=
t<br>Use &#39;sudo apt autoremove&#39; to remove them.<br>0 to upgrade, 0 t=
o newly install, 0 to remove and 171 not to upgrade.</div><div><br></div><d=
iv>Regards</div><div>Rajesh <br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 7, 2019 at 7:46 PM Michae=
l Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi=C2=A0Rajesh - CMake found your GR38 install,=
 not your GR37 install. You should pick GR37 or GR38 and go with just it, a=
nd remove the one you&#39;re not going with. Then, pick the same branch of =
gr-ieee802-11. Hope this is useful! - MLD</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 7, 2019 at 9:47 AM Dr.=
 Rajesh Tiwari via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi R=
on,</div><div><br></div><div>Sounds good, seems a bit progress. <br></div><=
div>I think other than Cmake policy, attached in screenshot I am almost the=
re. Do you think I would need any other requirements?</div><div><br></div><=
div>Regards</div><div>Rajesh <br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 7, 2019 =
at 2:06 PM Ron Economos via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Okay, here&#39;s the complete set of instructions.</p>
    <p>git clone <a class=3D"gmail-m_-7290691257370690276gmail-m_3548770407=
089070136gmail-m_6237427211446415851moz-txt-link-freetext" href=3D"https://=
github.com/bastibl/gr-ieee802-11.git" target=3D"_blank">https://github.com/=
bastibl/gr-ieee802-11.git</a></p>
    <p>cd gr-ieee802-11/</p>
    <p>git checkout maint-3.7</p>
    <p>mkdir build</p>
    <p>cd build<br>
    </p>
    <p>cmake ../</p>
    <p>make</p>
    <p>sudo make install</p>
    <p>sudo ldconfig</p>
    <p>Make sure you use the correct install prefix in the cmake step.
      You can determine the install prefix with:</p>
    <p>gnuradio-config-info --prefix</p>
    <p>cmake ../ will install into the default prefix, which is
      usr/local. If you have any other prefix, you need to specify that
      with the cmake command. For example:</p>
    <p>cmake -DCMAKE_INSTALL_PREFIX=3D/usr ../<br>
    </p>
    <p>Ron<br>
    </p>
    <div class=3D"gmail-m_-7290691257370690276gmail-m_3548770407089070136gm=
ail-m_6237427211446415851moz-cite-prefix">On 9/7/19 05:36, Dr. Rajesh Tiwar=
i
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi Ron,
        <div><br>
        </div>
        <div>Thanks for response. I think I am bit confused here..., I
          am trying to install from=C2=A0<a href=3D"https://github.com/bast=
ibl/gr-ieee802-11" target=3D"_blank">https://github.com/bastibl/gr-ieee802-=
11</a>=C2=A0and
          I am getting error.=C2=A0</div>
        <div><br>
        </div>
        <div>Regards</div>
        <div>Rajesh</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 7, 2019 at 12:07
          PM Ron Economos via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <p>Opps, should be:</p>
            <p>git checkout maint-3.7</p>
            <p>Ron<br>
            </p>
            <div class=3D"gmail-m_-7290691257370690276gmail-m_3548770407089=
070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-cite-prefi=
x">On
              9/7/19 04:05, Ron Economos via USRP-users wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <p>There&#39;s a 3.7 version of gr-ieee802-11. In the
                gr-ieee802-11 directory, type:<br>
              </p>
              <p>git checkout maint3.7</p>
              <p>Ron<br>
              </p>
              <div class=3D"gmail-m_-7290691257370690276gmail-m_35487704070=
89070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-cite-pre=
fix">On
                9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">HI=C2=A0Michael,
                  <div><br>
                  </div>
                  <div>Many thanks for prompt response. I encountered
                    problem in installing module &quot;gr-ieee802-11&quot; =
as it
                    seems requiring gnuradio-companion, version 3.8. I
                    am not able to update my GRC version 3.7 to 3.8. Any
                    suggestion, please let me know.</div>
                  <div><br>
                  </div>
                  <div>Regards</div>
                  <div>Rajesh</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019
                    at 5:14 PM Michael Dickens &lt;<a href=3D"mailto:michae=
l.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">Hi=C2=A0Rajesh - The block &quot;OFD=
M Sync
                        Short&quot; is part of the GR out-of-tree (OOT)
                        module &quot;gr-ieee802-11&quot; ... as are many of=
 the
                        other blocks in the image you provided. If that
                        OOT is not installed already, it shouldn&#39;t be
                        difficult to do so. Hope this is useful! - MLD</div=
>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6=
,
                          2019 at 5:10 AM Dr. Rajesh Tiwari via
                          USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <div>Dear All,</div>
                            <div><br>
                            </div>
                            <div>I am trying to decode IEEE 802.11a OFDM
                              receiver as per GRC block diagram used in
                              Paper &quot;Bloessl et al(2013), An IEEE
                              802.11a/g/p OFDM Receiver for GNU
                              Radio,=C2=A0SRIF=E2=80=9913, August 12, 2013,=
 Hong
                              Kong, China.&quot;. The screenshot of block
                              diagram given below, In GRC, I didn&#39;t fin=
d
                              &quot;OFDM Sync Short&quot; block, any help w=
ould=C2=A0be
                              appreciated.</div>
                            <div><br>
                            </div>
                            <div>&quot;GRC block diagram from Bloessl et
                              al(2013), An IEEE 802.11a/g/p OFDM
                              Receiver for GNU Radio,=C2=A0SRIF=E2=80=9913,=
 August
                              12, 2013, Hong Kong, China&quot;</div>
                            <div>
                              <div><br>
                              </div>
                            </div>
                            <div>Regards</div>
                            <div>Rajesh</div>
                            <div><br>
                            </div>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list<br>
                          <a href=3D"mailto:USRP-users@lists.ettus.com" tar=
get=3D"_blank">USRP-users@lists.ettus.com</a><br>
                          <a href=3D"http://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://l=
ists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                      <div><br>
                      </div>
                      -- <br>
                      <div dir=3D"ltr" class=3D"gmail-m_-729069125737069027=
6gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-29592641464=
92741720gmail-m_-1906365911473962634gmail_signature">
                        <div dir=3D"ltr">Michael Dickens, Mac OS X
                          Programmer<br>
                          <br>
                          Ettus Research Technical Support<br>
                          <br>
                          Email: <a href=3D"mailto:support@ettus.com" targe=
t=3D"_blank">support@ettus.com</a><br>
                          <br>
                          Web: <a href=3D"http://www.ettus.com" target=3D"_=
blank">http://www.ettus.com</a></div>
                      </div>
                    </div>
                  </blockquote>
                </div>
                <br>
                <fieldset class=3D"gmail-m_-7290691257370690276gmail-m_3548=
770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720mimeA=
ttachmentHeader"></fieldset>
                <pre class=3D"gmail-m_-7290691257370690276gmail-m_354877040=
7089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-quote-=
pre">_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_=
6237427211446415851gmail-m_-2959264146492741720moz-txt-link-abbreviated" hr=
ef=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists=
.ettus.com</a>
<a class=3D"gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_=
6237427211446415851gmail-m_-2959264146492741720moz-txt-link-freetext" href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" tar=
get=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com</a>
</pre>
              </blockquote>
              <br>
              <fieldset class=3D"gmail-m_-7290691257370690276gmail-m_354877=
0407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720mimeAtt=
achmentHeader"></fieldset>
              <pre class=3D"gmail-m_-7290691257370690276gmail-m_35487704070=
89070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-quote-pr=
e">_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_=
6237427211446415851gmail-m_-2959264146492741720moz-txt-link-abbreviated" hr=
ef=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists=
.ettus.com</a>
<a class=3D"gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_=
6237427211446415851gmail-m_-2959264146492741720moz-txt-link-freetext" href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" tar=
get=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com</a>
</pre>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-7290691257370690276gmail_signature"><div dir=3D"ltr">Mic=
hael Dickens, Mac OS X Programmer<br><br>Ettus Research Technical Support<b=
r><br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support=
@ettus.com</a><br><br>Web: <a href=3D"http://www.ettus.com" target=3D"_blan=
k">http://www.ettus.com</a></div></div>
</blockquote></div>

--000000000000412ebc05920533aa--


--===============7678116212641012141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7678116212641012141==--

