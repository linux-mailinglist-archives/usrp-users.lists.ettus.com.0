Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AB8AC6B3
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 15:06:45 +0200 (CEST)
Received: from [::1] (port=45502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6aQG-0002FO-It; Sat, 07 Sep 2019 09:06:36 -0400
Received: from resqmta-po-03v.sys.comcast.net ([96.114.154.162]:36802)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1i6aQB-00026g-Tr
 for usrp-users@lists.ettus.com; Sat, 07 Sep 2019 09:06:32 -0400
Received: from resomta-po-06v.sys.comcast.net ([96.114.154.230])
 by resqmta-po-03v.sys.comcast.net with ESMTP
 id 6aP7igKl5mf146aPXiOCBN; Sat, 07 Sep 2019 13:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1567861551;
 bh=UYXDCxtkEheTpAvoBZv1c+vOx9mI4coJWx/Cz0RNAXk=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=LLOvn5h/HcNNgrAtgVuDMsn2MEZNv7d7SX3fLb61Brv5IyWcx1ZPJuFrRoD4Xq9JG
 h0g6pWSnQ0FFqwJcu9a+787/buS833HgCtXIUwrJuL7Wix++QPFexl7pQapflXMujQ
 SEgLwAxe40KeYt1wMkDcr5b92Ax6yg2vgDZhQxkou2ZTnZXTuvs0OzI9/UDlsvhwMx
 QD4NGQtutMypa13jGchIAnFuqfRGSkCyyHo8yoF6o0Eq3o02tqFy9NsF/ZcK3tAmc/
 BORb6ENf/7SRRwYzC5Lg75jCa2YpRa3/A0B25GtjgAVsYGR2c7gCK5XYm5S41Texxi
 +nwjD+9TR8OHQ==
Received: from [IPv6:2601:647:4200:ea30:b8d7:5787:5cb1:2854]
 ([IPv6:2601:647:4200:ea30:b8d7:5787:5cb1:2854])
 by resomta-po-06v.sys.comcast.net with ESMTPSA
 id 6aPWiJnwEvX2z6aPWiuzh6; Sat, 07 Sep 2019 13:05:50 +0000
X-Xfinity-VMeta: sc=10;st=legit
To: usrp-users@lists.ettus.com
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
 <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
 <CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com>
 <62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net>
 <cd4d078a-43f5-8a82-3456-5fc4c86f030f@comcast.net>
 <CADk-HHCJbxV3Px=eu5tZrEC3zVh81QXys46NegQ3V809D+2O3Q@mail.gmail.com>
Message-ID: <202c637b-1565-5a21-9f76-91a648e211c6@comcast.net>
Date: Sat, 7 Sep 2019 06:05:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CADk-HHCJbxV3Px=eu5tZrEC3zVh81QXys46NegQ3V809D+2O3Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7273330752277399499=="
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
--===============7273330752277399499==
Content-Type: multipart/alternative;
 boundary="------------1EC500E4CF92E0103E2FAF64"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1EC500E4CF92E0103E2FAF64
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Okay, here's the complete set of instructions.

git clone https://github.com/bastibl/gr-ieee802-11.git

cd gr-ieee802-11/

git checkout maint-3.7

mkdir build

cd build

cmake ../

make

sudo make install

sudo ldconfig

Make sure you use the correct install prefix in the cmake step. You can 
determine the install prefix with:

gnuradio-config-info --prefix

cmake ../ will install into the default prefix, which is usr/local. If 
you have any other prefix, you need to specify that with the cmake 
command. For example:

cmake -DCMAKE_INSTALL_PREFIX=/usr ../

Ron

On 9/7/19 05:36, Dr. Rajesh Tiwari wrote:
> Hi Ron,
>
> Thanks for response. I think I am bit confused here..., I am trying to 
> install from https://github.com/bastibl/gr-ieee802-11 and I am getting 
> error.
>
> Regards
> Rajesh
>
> On Sat, Sep 7, 2019 at 12:07 PM Ron Economos via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Opps, should be:
>
>     git checkout maint-3.7
>
>     Ron
>
>     On 9/7/19 04:05, Ron Economos via USRP-users wrote:
>>
>>     There's a 3.7 version of gr-ieee802-11. In the gr-ieee802-11
>>     directory, type:
>>
>>     git checkout maint3.7
>>
>>     Ron
>>
>>     On 9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:
>>>     HI Michael,
>>>
>>>     Many thanks for prompt response. I encountered problem in
>>>     installing module "gr-ieee802-11" as it seems requiring
>>>     gnuradio-companion, version 3.8. I am not able to update my GRC
>>>     version 3.7 to 3.8. Any suggestion, please let me know.
>>>
>>>     Regards
>>>     Rajesh
>>>
>>>     On Fri, Sep 6, 2019 at 5:14 PM Michael Dickens
>>>     <michael.dickens@ettus.com <mailto:michael.dickens@ettus.com>>
>>>     wrote:
>>>
>>>         Hi Rajesh - The block "OFDM Sync Short" is part of the GR
>>>         out-of-tree (OOT) module "gr-ieee802-11" ... as are many of
>>>         the other blocks in the image you provided. If that OOT is
>>>         not installed already, it shouldn't be difficult to do so.
>>>         Hope this is useful! - MLD
>>>
>>>         On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh Tiwari via
>>>         USRP-users <usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>>
>>>             Dear All,
>>>
>>>             I am trying to decode IEEE 802.11a OFDM receiver as per
>>>             GRC block diagram used in Paper "Bloessl et al(2013), An
>>>             IEEE 802.11a/g/p OFDM Receiver for GNU Radio, SRIF’13,
>>>             August 12, 2013, Hong Kong, China.". The screenshot of
>>>             block diagram given below, In GRC, I didn't find "OFDM
>>>             Sync Short" block, any help would be appreciated.
>>>
>>>             "GRC block diagram from Bloessl et al(2013), An IEEE
>>>             802.11a/g/p OFDM Receiver for GNU Radio, SRIF’13, August
>>>             12, 2013, Hong Kong, China"
>>>
>>>             Regards
>>>             Rajesh
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list
>>>             USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>>         -- 
>>>         Michael Dickens, Mac OS X Programmer
>>>
>>>         Ettus Research Technical Support
>>>
>>>         Email: support@ettus.com <mailto:support@ettus.com>
>>>
>>>         Web: http://www.ettus.com
>>>
>>>
>>>     _______________________________________________
>>>     USRP-users mailing list
>>>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------1EC500E4CF92E0103E2FAF64
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Okay, here's the complete set of instructions.</p>
    <p>git clone <a class="moz-txt-link-freetext" href="https://github.com/bastibl/gr-ieee802-11.git">https://github.com/bastibl/gr-ieee802-11.git</a></p>
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
    <p>cmake -DCMAKE_INSTALL_PREFIX=/usr ../<br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 9/7/19 05:36, Dr. Rajesh Tiwari
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADk-HHCJbxV3Px=eu5tZrEC3zVh81QXys46NegQ3V809D+2O3Q@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hi Ron,
        <div><br>
        </div>
        <div>Thanks for response. I think I am bit confused here..., I
          am trying to install from <a
            href="https://github.com/bastibl/gr-ieee802-11"
            moz-do-not-send="true">https://github.com/bastibl/gr-ieee802-11</a> and
          I am getting error. </div>
        <div><br>
        </div>
        <div>Regards</div>
        <div>Rajesh</div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Sat, Sep 7, 2019 at 12:07
          PM Ron Economos via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <p>Opps, should be:</p>
            <p>git checkout maint-3.7</p>
            <p>Ron<br>
            </p>
            <div class="gmail-m_-2959264146492741720moz-cite-prefix">On
              9/7/19 04:05, Ron Economos via USRP-users wrote:<br>
            </div>
            <blockquote type="cite">
              <p>There's a 3.7 version of gr-ieee802-11. In the
                gr-ieee802-11 directory, type:<br>
              </p>
              <p>git checkout maint3.7</p>
              <p>Ron<br>
              </p>
              <div class="gmail-m_-2959264146492741720moz-cite-prefix">On
                9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">HI Michael,
                  <div><br>
                  </div>
                  <div>Many thanks for prompt response. I encountered
                    problem in installing module "gr-ieee802-11" as it
                    seems requiring gnuradio-companion, version 3.8. I
                    am not able to update my GRC version 3.7 to 3.8. Any
                    suggestion, please let me know.</div>
                  <div><br>
                  </div>
                  <div>Regards</div>
                  <div>Rajesh</div>
                </div>
                <br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Fri, Sep 6, 2019
                    at 5:14 PM Michael Dickens &lt;<a
                      href="mailto:michael.dickens@ettus.com"
                      target="_blank" moz-do-not-send="true">michael.dickens@ettus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div dir="ltr">
                      <div dir="ltr">Hi Rajesh - The block "OFDM Sync
                        Short" is part of the GR out-of-tree (OOT)
                        module "gr-ieee802-11" ... as are many of the
                        other blocks in the image you provided. If that
                        OOT is not installed already, it shouldn't be
                        difficult to do so. Hope this is useful! - MLD</div>
                      <br>
                      <div class="gmail_quote">
                        <div dir="ltr" class="gmail_attr">On Fri, Sep 6,
                          2019 at 5:10 AM Dr. Rajesh Tiwari via
                          USRP-users &lt;<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
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
                            <div>I am trying to decode IEEE 802.11a OFDM
                              receiver as per GRC block diagram used in
                              Paper "Bloessl et al(2013), An IEEE
                              802.11a/g/p OFDM Receiver for GNU
                              Radio, SRIF’13, August 12, 2013, Hong
                              Kong, China.". The screenshot of block
                              diagram given below, In GRC, I didn't find
                              "OFDM Sync Short" block, any help would be
                              appreciated.</div>
                            <div><br>
                            </div>
                            <div>"GRC block diagram from Bloessl et
                              al(2013), An IEEE 802.11a/g/p OFDM
                              Receiver for GNU Radio, SRIF’13, August
                              12, 2013, Hong Kong, China"</div>
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
                          <a href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                      <div><br>
                      </div>
                      -- <br>
                      <div dir="ltr"
class="gmail-m_-2959264146492741720gmail-m_-1906365911473962634gmail_signature">
                        <div dir="ltr">Michael Dickens, Mac OS X
                          Programmer<br>
                          <br>
                          Ettus Research Technical Support<br>
                          <br>
                          Email: <a href="mailto:support@ettus.com"
                            target="_blank" moz-do-not-send="true">support@ettus.com</a><br>
                          <br>
                          Web: <a href="http://www.ettus.com"
                            target="_blank" moz-do-not-send="true">http://www.ettus.com</a></div>
                      </div>
                    </div>
                  </blockquote>
                </div>
                <br>
                <fieldset
                  class="gmail-m_-2959264146492741720mimeAttachmentHeader"></fieldset>
                <pre class="gmail-m_-2959264146492741720moz-quote-pre">_______________________________________________
USRP-users mailing list
<a class="gmail-m_-2959264146492741720moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="gmail-m_-2959264146492741720moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
              <fieldset
                class="gmail-m_-2959264146492741720mimeAttachmentHeader"></fieldset>
              <pre class="gmail-m_-2959264146492741720moz-quote-pre">_______________________________________________
USRP-users mailing list
<a class="gmail-m_-2959264146492741720moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="gmail-m_-2959264146492741720moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------1EC500E4CF92E0103E2FAF64--


--===============7273330752277399499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7273330752277399499==--

