Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0346EACB99
	for <lists+usrp-users@lfdr.de>; Sun,  8 Sep 2019 10:38:10 +0200 (CEST)
Received: from [::1] (port=60848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6si1-0000g7-1i; Sun, 08 Sep 2019 04:38:09 -0400
Received: from resqmta-po-06v.sys.comcast.net ([96.114.154.165]:42896)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1i6shw-0000bo-ON
 for usrp-users@lists.ettus.com; Sun, 08 Sep 2019 04:38:04 -0400
Received: from resomta-po-13v.sys.comcast.net ([96.114.154.237])
 by resqmta-po-06v.sys.comcast.net with ESMTP
 id 6shHiZpd6heNt6shHi9g7j; Sun, 08 Sep 2019 08:37:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1567931843;
 bh=2S4lhn6FgfVr3X+5K1AleAxlEU6E7qs/6Brcfkpa6nU=;
 h=Received:Received:Subject:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=sWESgZMZDbg46H5xem9P3MbBMGwNMHZ1W7BqsU9P2/iWCeuch3iOMDcX9aj72l5mi
 B/mDiy7e4pqs9gYSs0lsAn4DQs/7KoIIXtN0caalMTldJY0DYuYORyKzqbHqtO/uLd
 g2bUQIii7zz8XiljiWcRiYtzYfe4UWqbsnrgeYBKzA1KQ5/DyfkVs1kscsWa+3rSfM
 mpBGf0w0UeSMHDQZ9iQpjFHbd9d3i69fq9kSL/EVgV/OdHL5+4w8/E/2D9UXFhjUHu
 F0x9SiIA9wnqzaTGgJ+3WyODrSx7ss+/414x9kdOzBHLb0sVuOmgLK2u/0jn0nZAXc
 C8uxEeGJs7zvA==
Received: from [IPv6:2601:647:4200:ea30:a953:3cc9:a577:6fdb]
 ([IPv6:2601:647:4200:ea30:a953:3cc9:a577:6fdb])
 by resomta-po-13v.sys.comcast.net with ESMTPSA
 id 6shGiqgxUR0e46shHim8GH; Sun, 08 Sep 2019 08:37:23 +0000
X-Xfinity-VMeta: sc=40;st=legit
Cc: usrp-users@lists.ettus.com
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
 <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
 <CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com>
 <62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net>
 <cd4d078a-43f5-8a82-3456-5fc4c86f030f@comcast.net>
 <CADk-HHCJbxV3Px=eu5tZrEC3zVh81QXys46NegQ3V809D+2O3Q@mail.gmail.com>
 <202c637b-1565-5a21-9f76-91a648e211c6@comcast.net>
 <CADk-HHBWC_tzgWBphGjhzmEekSQbo+=WDY+HJ5HumoQHEaQ+Tw@mail.gmail.com>
 <CAGNhwTP4UsJWSOBH3TpRRZpx9pgpLgZ_WCq+4uTsG5QxFm9wHQ@mail.gmail.com>
 <CADk-HHAHE1QBC80GLFwzJja8mPe4o0Xz3mUE4Lrav3qFtjDdNw@mail.gmail.com>
Message-ID: <3bc93d9e-b80b-5968-b3f3-79bab2602d80@comcast.net>
Date: Sun, 8 Sep 2019 01:37:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CADk-HHAHE1QBC80GLFwzJja8mPe4o0Xz3mUE4Lrav3qFtjDdNw@mail.gmail.com>
Content-Language: en-US
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============8911082229307728831=="
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

This is a multi-part message in MIME format.
--===============8911082229307728831==
Content-Type: multipart/alternative;
 boundary="------------F139F8E72F7C19C76AB57945"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F139F8E72F7C19C76AB57945
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Looks like you built the master branch of GNU Radio, which defaults to 
Python 3. To resolve those failing tests, you need python3-scipy and 
python3-zmq.

Ron

On 9/7/19 23:58, Dr. Rajesh Tiwari wrote:
> Thanks Michael,
>
> I removed and tried to install properly gnuradio, and I get the 
> following test fail.
> 97% tests passed, 10 tests failed out of 364
>
> Total Test time (real) = 237.56 sec
>
> The following tests FAILED:
> 243 - qa_polar_decoder_sc (Failed)
> 244 - qa_polar_decoder_sc_list (Failed)
> 245 - qa_polar_decoder_sc_systematic (Failed)
> 246 - qa_polar_encoder (Failed)
> 247 - qa_polar_encoder_systematic (Failed)
> 360 - qa_zeromq_pub (Failed)
> 361 - qa_zeromq_pubsub (Failed)
> 362 - qa_zeromq_pushpull (Failed)
> 363 - qa_zeromq_reqrep (Failed)
> 364 - qa_zeromq_sub (Failed)
> Errors while running CTest
> Makefile:107: recipe for target 'test' failed
> make: *** [test] Error 8
>
> Any suggestion please. I tried to see some of the previous thread and 
> suggested to install python-scipy which I did and sounds I have newest 
> version. Please see below:
> python-scipy is already the newest version (0.17.0-1).
> The following packages were automatically installed and are no longer 
> required:
>   libcodec2-0.4 libcppunit-1.13-0v5 libcppunit-dev libglade2-0 
> libglfw3 libgnuradio-analog3.7.9 libgnuradio-atsc3.7.9
>   libgnuradio-channels3.7.9 libgnuradio-comedi3.7.9 
> libgnuradio-digital3.7.9 libgnuradio-dtv3.7.9 libgnuradio-fec3.7.9 
> libgnuradio-fft3.7.9
>   libgnuradio-filter3.7.9 libgnuradio-fosphor3.7.0 
> libgnuradio-noaa3.7.9 libgnuradio-pager3.7.9 libgnuradio-qtgui3.7.9
>   libgnuradio-trellis3.7.9 libgnuradio-video-sdl3.7.9 
> libgnuradio-vocoder3.7.9 libgnuradio-wavelet3.7.9 libgnuradio-wxgui3.7.9
>   libgnuradio-zeromq3.7.9 libgsm1 libjs-jquery-ui libpython3-dev 
> libpython3.5-dev libqwt-dev libqwt5-qt4 libqwt6abi1 libwxbase3.0-0v5
>   libwxgtk3.0-0v5 python-bs4 python-cairo python-cheetah python-cycler 
> python-dateutil python-glade2 python-gtk2 python-html5lib python-lxml
>   python-matplotlib python-matplotlib-data python-networkx 
> python-opengl python-pyparsing python-qwt5-qt4 python-tz python-wxgtk3.0
>   python-wxversion python-yaml python3.5-dev rtl-sdr uhd-host
> Use 'sudo apt autoremove' to remove them.
> 0 to upgrade, 0 to newly install, 0 to remove and 171 not to upgrade.
>
> Regards
> Rajesh
>
> On Sat, Sep 7, 2019 at 7:46 PM Michael Dickens 
> <michael.dickens@ettus.com <mailto:michael.dickens@ettus.com>> wrote:
>
>     Hi Rajesh - CMake found your GR38 install, not your GR37 install.
>     You should pick GR37 or GR38 and go with just it, and remove the
>     one you're not going with. Then, pick the same branch of
>     gr-ieee802-11. Hope this is useful! - MLD
>
>     On Sat, Sep 7, 2019 at 9:47 AM Dr. Rajesh Tiwari via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>         Hi Ron,
>
>         Sounds good, seems a bit progress.
>         I think other than Cmake policy, attached in screenshot I am
>         almost there. Do you think I would need any other requirements?
>
>         Regards
>         Rajesh
>
>
>         On Sat, Sep 7, 2019 at 2:06 PM Ron Economos via USRP-users
>         <usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>> wrote:
>
>             Okay, here's the complete set of instructions.
>
>             git clone https://github.com/bastibl/gr-ieee802-11.git
>
>             cd gr-ieee802-11/
>
>             git checkout maint-3.7
>
>             mkdir build
>
>             cd build
>
>             cmake ../
>
>             make
>
>             sudo make install
>
>             sudo ldconfig
>
>             Make sure you use the correct install prefix in the cmake
>             step. You can determine the install prefix with:
>
>             gnuradio-config-info --prefix
>
>             cmake ../ will install into the default prefix, which is
>             usr/local. If you have any other prefix, you need to
>             specify that with the cmake command. For example:
>
>             cmake -DCMAKE_INSTALL_PREFIX=/usr ../
>
>             Ron
>
>             On 9/7/19 05:36, Dr. Rajesh Tiwari wrote:
>>             Hi Ron,
>>
>>             Thanks for response. I think I am bit confused here..., I
>>             am trying to install from
>>             https://github.com/bastibl/gr-ieee802-11 and I am getting
>>             error.
>>
>>             Regards
>>             Rajesh
>>
>>             On Sat, Sep 7, 2019 at 12:07 PM Ron Economos via
>>             USRP-users <usrp-users@lists.ettus.com
>>             <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>>                 Opps, should be:
>>
>>                 git checkout maint-3.7
>>
>>                 Ron
>>
>>                 On 9/7/19 04:05, Ron Economos via USRP-users wrote:
>>>
>>>                 There's a 3.7 version of gr-ieee802-11. In the
>>>                 gr-ieee802-11 directory, type:
>>>
>>>                 git checkout maint3.7
>>>
>>>                 Ron
>>>
>>>                 On 9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:
>>>>                 HI Michael,
>>>>
>>>>                 Many thanks for prompt response. I encountered
>>>>                 problem in installing module "gr-ieee802-11" as it
>>>>                 seems requiring gnuradio-companion, version 3.8. I
>>>>                 am not able to update my GRC version 3.7 to 3.8.
>>>>                 Any suggestion, please let me know.
>>>>
>>>>                 Regards
>>>>                 Rajesh
>>>>
>>>>                 On Fri, Sep 6, 2019 at 5:14 PM Michael Dickens
>>>>                 <michael.dickens@ettus.com
>>>>                 <mailto:michael.dickens@ettus.com>> wrote:
>>>>
>>>>                     Hi Rajesh - The block "OFDM Sync Short" is part
>>>>                     of the GR out-of-tree (OOT) module
>>>>                     "gr-ieee802-11" ... as are many of the other
>>>>                     blocks in the image you provided. If that OOT
>>>>                     is not installed already, it shouldn't be
>>>>                     difficult to do so. Hope this is useful! - MLD
>>>>
>>>>                     On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh
>>>>                     Tiwari via USRP-users
>>>>                     <usrp-users@lists.ettus.com
>>>>                     <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>
>>>>                         Dear All,
>>>>
>>>>                         I am trying to decode IEEE 802.11a OFDM
>>>>                         receiver as per GRC block diagram used in
>>>>                         Paper "Bloessl et al(2013), An IEEE
>>>>                         802.11a/g/p OFDM Receiver for GNU
>>>>                         Radio, SRIF’13, August 12, 2013, Hong Kong,
>>>>                         China.". The screenshot of block diagram
>>>>                         given below, In GRC, I didn't find "OFDM
>>>>                         Sync Short" block, any help would be
>>>>                         appreciated.
>>>>
>>>>                         "GRC block diagram from Bloessl et
>>>>                         al(2013), An IEEE 802.11a/g/p OFDM Receiver
>>>>                         for GNU Radio, SRIF’13, August 12, 2013,
>>>>                         Hong Kong, China"
>>>>
>>>>                         Regards
>>>>                         Rajesh
>>>>
>>>>                         _______________________________________________
>>>>                         USRP-users mailing list
>>>>                         USRP-users@lists.ettus.com
>>>>                         <mailto:USRP-users@lists.ettus.com>
>>>>                         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>>
>>>>                     -- 
>>>>                     Michael Dickens, Mac OS X Programmer
>>>>
>>>>                     Ettus Research Technical Support
>>>>
>>>>                     Email: support@ettus.com <mailto:support@ettus.com>
>>>>
>>>>                     Web: http://www.ettus.com
>>>>
>>>>
>>>>                 _______________________________________________
>>>>                 USRP-users mailing list
>>>>                 USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>>>                 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>                 _______________________________________________
>>>                 USRP-users mailing list
>>>                 USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>>                 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>                 _______________________________________________
>>                 USRP-users mailing list
>>                 USRP-users@lists.ettus.com
>>                 <mailto:USRP-users@lists.ettus.com>
>>                 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>             _______________________________________________
>             USRP-users mailing list
>             USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>         _______________________________________________
>         USRP-users mailing list
>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
>     -- 
>     Michael Dickens, Mac OS X Programmer
>
>     Ettus Research Technical Support
>
>     Email: support@ettus.com <mailto:support@ettus.com>
>
>     Web: http://www.ettus.com
>

--------------F139F8E72F7C19C76AB57945
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Looks like you built the master branch of GNU Radio, which
      defaults to Python 3. To resolve those failing tests, you need
      python3-scipy and python3-zmq.</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 9/7/19 23:58, Dr. Rajesh Tiwari
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADk-HHAHE1QBC80GLFwzJja8mPe4o0Xz3mUE4Lrav3qFtjDdNw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Thanks Michael,</div>
        <div><br>
        </div>
        <div>I removed and tried to install properly gnuradio, and I get
          the following test fail. <br>
        </div>
        <div>97% tests passed, 10 tests failed out of 364<br>
          <br>
          Total Test time (real) = 237.56 sec<br>
          <br>
          The following tests FAILED:<br>
          243 - qa_polar_decoder_sc (Failed)<br>
          244 - qa_polar_decoder_sc_list (Failed)<br>
          245 - qa_polar_decoder_sc_systematic (Failed)<br>
          246 - qa_polar_encoder (Failed)<br>
          247 - qa_polar_encoder_systematic (Failed)<br>
          360 - qa_zeromq_pub (Failed)<br>
          361 - qa_zeromq_pubsub (Failed)<br>
          362 - qa_zeromq_pushpull (Failed)<br>
          363 - qa_zeromq_reqrep (Failed)<br>
          364 - qa_zeromq_sub (Failed)<br>
          Errors while running CTest<br>
          Makefile:107: recipe for target 'test' failed<br>
          make: *** [test] Error 8</div>
        <div><br>
        </div>
        <div>Any suggestion please. I tried to see some of the previous
          thread and suggested to install python-scipy which I did and
          sounds I have newest version. Please see below:<br>
        </div>
        <div>python-scipy is already the newest version (0.17.0-1).<br>
          The following packages were automatically installed and are no
          longer required:<br>
            libcodec2-0.4 libcppunit-1.13-0v5 libcppunit-dev libglade2-0
          libglfw3 libgnuradio-analog3.7.9 libgnuradio-atsc3.7.9<br>
            libgnuradio-channels3.7.9 libgnuradio-comedi3.7.9
          libgnuradio-digital3.7.9 libgnuradio-dtv3.7.9
          libgnuradio-fec3.7.9 libgnuradio-fft3.7.9<br>
            libgnuradio-filter3.7.9 libgnuradio-fosphor3.7.0
          libgnuradio-noaa3.7.9 libgnuradio-pager3.7.9
          libgnuradio-qtgui3.7.9<br>
            libgnuradio-trellis3.7.9 libgnuradio-video-sdl3.7.9
          libgnuradio-vocoder3.7.9 libgnuradio-wavelet3.7.9
          libgnuradio-wxgui3.7.9<br>
            libgnuradio-zeromq3.7.9 libgsm1 libjs-jquery-ui
          libpython3-dev libpython3.5-dev libqwt-dev libqwt5-qt4
          libqwt6abi1 libwxbase3.0-0v5<br>
            libwxgtk3.0-0v5 python-bs4 python-cairo python-cheetah
          python-cycler python-dateutil python-glade2 python-gtk2
          python-html5lib python-lxml<br>
            python-matplotlib python-matplotlib-data python-networkx
          python-opengl python-pyparsing python-qwt5-qt4 python-tz
          python-wxgtk3.0<br>
            python-wxversion python-yaml python3.5-dev rtl-sdr uhd-host<br>
          Use 'sudo apt autoremove' to remove them.<br>
          0 to upgrade, 0 to newly install, 0 to remove and 171 not to
          upgrade.</div>
        <div><br>
        </div>
        <div>Regards</div>
        <div>Rajesh <br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Sat, Sep 7, 2019 at 7:46 PM
          Michael Dickens &lt;<a href="mailto:michael.dickens@ettus.com"
            moz-do-not-send="true">michael.dickens@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">Hi Rajesh - CMake found your GR38 install, not
            your GR37 install. You should pick GR37 or GR38 and go with
            just it, and remove the one you're not going with. Then,
            pick the same branch of gr-ieee802-11. Hope this is useful!
            - MLD</div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Sat, Sep 7, 2019 at
              9:47 AM Dr. Rajesh Tiwari via USRP-users &lt;<a
                href="mailto:usrp-users@lists.ettus.com" target="_blank"
                moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir="ltr">
                <div>Hi Ron,</div>
                <div><br>
                </div>
                <div>Sounds good, seems a bit progress. <br>
                </div>
                <div>I think other than Cmake policy, attached in
                  screenshot I am almost there. Do you think I would
                  need any other requirements?</div>
                <div><br>
                </div>
                <div>Regards</div>
                <div>Rajesh <br>
                </div>
                <div><br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Sat, Sep 7, 2019 at
                  2:06 PM Ron Economos via USRP-users &lt;<a
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div bgcolor="#FFFFFF">
                    <p>Okay, here's the complete set of instructions.</p>
                    <p>git clone <a
class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851moz-txt-link-freetext"
href="https://github.com/bastibl/gr-ieee802-11.git" target="_blank"
                        moz-do-not-send="true">https://github.com/bastibl/gr-ieee802-11.git</a></p>
                    <p>cd gr-ieee802-11/</p>
                    <p>git checkout maint-3.7</p>
                    <p>mkdir build</p>
                    <p>cd build<br>
                    </p>
                    <p>cmake ../</p>
                    <p>make</p>
                    <p>sudo make install</p>
                    <p>sudo ldconfig</p>
                    <p>Make sure you use the correct install prefix in
                      the cmake step. You can determine the install
                      prefix with:</p>
                    <p>gnuradio-config-info --prefix</p>
                    <p>cmake ../ will install into the default prefix,
                      which is usr/local. If you have any other prefix,
                      you need to specify that with the cmake command.
                      For example:</p>
                    <p>cmake -DCMAKE_INSTALL_PREFIX=/usr ../<br>
                    </p>
                    <p>Ron<br>
                    </p>
                    <div
class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851moz-cite-prefix">On
                      9/7/19 05:36, Dr. Rajesh Tiwari wrote:<br>
                    </div>
                    <blockquote type="cite">
                      <div dir="ltr">Hi Ron,
                        <div><br>
                        </div>
                        <div>Thanks for response. I think I am bit
                          confused here..., I am trying to install from <a
href="https://github.com/bastibl/gr-ieee802-11" target="_blank"
                            moz-do-not-send="true">https://github.com/bastibl/gr-ieee802-11</a> and
                          I am getting error. </div>
                        <div><br>
                        </div>
                        <div>Regards</div>
                        <div>Rajesh</div>
                      </div>
                      <br>
                      <div class="gmail_quote">
                        <div dir="ltr" class="gmail_attr">On Sat, Sep 7,
                          2019 at 12:07 PM Ron Economos via USRP-users
                          &lt;<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div bgcolor="#FFFFFF">
                            <p>Opps, should be:</p>
                            <p>git checkout maint-3.7</p>
                            <p>Ron<br>
                            </p>
                            <div
class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-cite-prefix">On
                              9/7/19 04:05, Ron Economos via USRP-users
                              wrote:<br>
                            </div>
                            <blockquote type="cite">
                              <p>There's a 3.7 version of gr-ieee802-11.
                                In the gr-ieee802-11 directory, type:<br>
                              </p>
                              <p>git checkout maint3.7</p>
                              <p>Ron<br>
                              </p>
                              <div
class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-cite-prefix">On
                                9/7/19 03:52, Dr. Rajesh Tiwari via
                                USRP-users wrote:<br>
                              </div>
                              <blockquote type="cite">
                                <div dir="ltr">HI Michael,
                                  <div><br>
                                  </div>
                                  <div>Many thanks for prompt response.
                                    I encountered problem in installing
                                    module "gr-ieee802-11" as it seems
                                    requiring gnuradio-companion,
                                    version 3.8. I am not able to update
                                    my GRC version 3.7 to 3.8. Any
                                    suggestion, please let me know.</div>
                                  <div><br>
                                  </div>
                                  <div>Regards</div>
                                  <div>Rajesh</div>
                                </div>
                                <br>
                                <div class="gmail_quote">
                                  <div dir="ltr" class="gmail_attr">On
                                    Fri, Sep 6, 2019 at 5:14 PM Michael
                                    Dickens &lt;<a
                                      href="mailto:michael.dickens@ettus.com"
                                      target="_blank"
                                      moz-do-not-send="true">michael.dickens@ettus.com</a>&gt;
                                    wrote:<br>
                                  </div>
                                  <blockquote class="gmail_quote"
                                    style="margin:0px 0px 0px
                                    0.8ex;border-left:1px solid
                                    rgb(204,204,204);padding-left:1ex">
                                    <div dir="ltr">
                                      <div dir="ltr">Hi Rajesh - The
                                        block "OFDM Sync Short" is part
                                        of the GR out-of-tree (OOT)
                                        module "gr-ieee802-11" ... as
                                        are many of the other blocks in
                                        the image you provided. If that
                                        OOT is not installed already, it
                                        shouldn't be difficult to do so.
                                        Hope this is useful! - MLD</div>
                                      <br>
                                      <div class="gmail_quote">
                                        <div dir="ltr"
                                          class="gmail_attr">On Fri, Sep
                                          6, 2019 at 5:10 AM Dr. Rajesh
                                          Tiwari via USRP-users &lt;<a
                                            href="mailto:usrp-users@lists.ettus.com"
                                            target="_blank"
                                            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                                          wrote:<br>
                                        </div>
                                        <blockquote class="gmail_quote"
                                          style="margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1ex">
                                          <div dir="ltr">
                                            <div>Dear All,</div>
                                            <div><br>
                                            </div>
                                            <div>I am trying to decode
                                              IEEE 802.11a OFDM receiver
                                              as per GRC block diagram
                                              used in Paper "Bloessl et
                                              al(2013), An IEEE
                                              802.11a/g/p OFDM Receiver
                                              for GNU Radio, SRIF’13,
                                              August 12, 2013, Hong
                                              Kong, China.". The
                                              screenshot of block
                                              diagram given below, In
                                              GRC, I didn't find "OFDM
                                              Sync Short" block, any
                                              help would be appreciated.</div>
                                            <div><br>
                                            </div>
                                            <div>"GRC block diagram from
                                              Bloessl et al(2013), An
                                              IEEE 802.11a/g/p OFDM
                                              Receiver for GNU
                                              Radio, SRIF’13, August 12,
                                              2013, Hong Kong, China"</div>
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
                                          <a
                                            href="mailto:USRP-users@lists.ettus.com"
                                            target="_blank"
                                            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                                          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                            rel="noreferrer"
                                            target="_blank"
                                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                                        </blockquote>
                                      </div>
                                      <div><br>
                                      </div>
                                      -- <br>
                                      <div dir="ltr"
class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720gmail-m_-1906365911473962634gmail_signature">
                                        <div dir="ltr">Michael Dickens,
                                          Mac OS X Programmer<br>
                                          <br>
                                          Ettus Research Technical
                                          Support<br>
                                          <br>
                                          Email: <a
                                            href="mailto:support@ettus.com"
                                            target="_blank"
                                            moz-do-not-send="true">support@ettus.com</a><br>
                                          <br>
                                          Web: <a
                                            href="http://www.ettus.com"
                                            target="_blank"
                                            moz-do-not-send="true">http://www.ettus.com</a></div>
                                      </div>
                                    </div>
                                  </blockquote>
                                </div>
                                <br>
                                <fieldset
class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720mimeAttachmentHeader"></fieldset>
                                <pre class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-quote-pre">_______________________________________________
USRP-users mailing list
<a class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                              </blockquote>
                              <br>
                              <fieldset
class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720mimeAttachmentHeader"></fieldset>
                              <pre class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-quote-pre">_______________________________________________
USRP-users mailing list
<a class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="gmail-m_-7290691257370690276gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-2959264146492741720moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                            </blockquote>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list<br>
                          <a href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                    </blockquote>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                  <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                </blockquote>
              </div>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a href="mailto:USRP-users@lists.ettus.com"
                target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
              <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            </blockquote>
          </div>
          <br clear="all">
          <div><br>
          </div>
          -- <br>
          <div dir="ltr"
            class="gmail-m_-7290691257370690276gmail_signature">
            <div dir="ltr">Michael Dickens, Mac OS X Programmer<br>
              <br>
              Ettus Research Technical Support<br>
              <br>
              Email: <a href="mailto:support@ettus.com" target="_blank"
                moz-do-not-send="true">support@ettus.com</a><br>
              <br>
              Web: <a href="http://www.ettus.com" target="_blank"
                moz-do-not-send="true">http://www.ettus.com</a></div>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------F139F8E72F7C19C76AB57945--


--===============8911082229307728831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8911082229307728831==--

