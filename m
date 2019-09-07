Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E55DCAC633
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 13:07:50 +0200 (CEST)
Received: from [::1] (port=57304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6YZH-0004G5-SY; Sat, 07 Sep 2019 07:07:47 -0400
Received: from resqmta-po-06v.sys.comcast.net ([96.114.154.165]:36498)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1i6YZE-00047S-LX
 for usrp-users@lists.ettus.com; Sat, 07 Sep 2019 07:07:44 -0400
Received: from resomta-po-12v.sys.comcast.net ([96.114.154.236])
 by resqmta-po-06v.sys.comcast.net with ESMTP
 id 6YYEiYzdiheNt6YYZi8KPP; Sat, 07 Sep 2019 11:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1567854423;
 bh=k5M2EbX1NvKUdGQMPR7ZLfYuwN2Daf9pb0phuZmlsFE=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=zAOUZ8PcedE5ewpsCJP0UjgmgkuuO/pTAvk0xfmQKpYvCmFu11dusoMizSAkRqIsG
 jytjtt5Ufu3Ob30DzF/jvwfqiEeeAQHaiKQ8k04MIQ7M8MQZZ1Or2rCbrngnXMrzW7
 F+Qs+qN7hnlXYC1OJm99DHnk32wjhLW4D16zwBX8zlql/COXTL5x3FEltbW1XgmH8Q
 Am0w8c7LZrZZxm0UHxb7iXw55sBpder51YTv9WCvM1TBbyjAdSAVknnJo7q8ObWquE
 tCCrfYEVTdHESIxhqML3jWlLdCCPtBiiysPiC3mfuqDkx8ac2S3+srJG45vdBGEg/Y
 7my2sIVhlePcw==
Received: from [IPv6:2601:647:4200:ea30:b8d7:5787:5cb1:2854]
 ([IPv6:2601:647:4200:ea30:b8d7:5787:5cb1:2854])
 by resomta-po-12v.sys.comcast.net with ESMTPSA
 id 6YYZi6MiMTaIy6YYZiYeSn; Sat, 07 Sep 2019 11:07:03 +0000
X-Xfinity-VMeta: sc=10;st=legit
To: usrp-users@lists.ettus.com
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
 <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
 <CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com>
 <62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net>
Message-ID: <cd4d078a-43f5-8a82-3456-5fc4c86f030f@comcast.net>
Date: Sat, 7 Sep 2019 04:07:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net>
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
Content-Type: multipart/mixed; boundary="===============1349040126929570782=="
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
--===============1349040126929570782==
Content-Type: multipart/alternative;
 boundary="------------81B534E702899FBB9015A0DD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------81B534E702899FBB9015A0DD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Opps, should be:

git checkout maint-3.7

Ron

On 9/7/19 04:05, Ron Economos via USRP-users wrote:
>
> There's a 3.7 version of gr-ieee802-11. In the gr-ieee802-11 
> directory, type:
>
> git checkout maint3.7
>
> Ron
>
> On 9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:
>> HI Michael,
>>
>> Many thanks for prompt response. I encountered problem in installing 
>> module "gr-ieee802-11" as it seems requiring gnuradio-companion, 
>> version 3.8. I am not able to update my GRC version 3.7 to 3.8. Any 
>> suggestion, please let me know.
>>
>> Regards
>> Rajesh
>>
>> On Fri, Sep 6, 2019 at 5:14 PM Michael Dickens 
>> <michael.dickens@ettus.com <mailto:michael.dickens@ettus.com>> wrote:
>>
>>     Hi Rajesh - The block "OFDM Sync Short" is part of the GR
>>     out-of-tree (OOT) module "gr-ieee802-11" ... as are many of the
>>     other blocks in the image you provided. If that OOT is not
>>     installed already, it shouldn't be difficult to do so. Hope this
>>     is useful! - MLD
>>
>>     On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh Tiwari via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>         Dear All,
>>
>>         I am trying to decode IEEE 802.11a OFDM receiver as per GRC
>>         block diagram used in Paper "Bloessl et al(2013), An IEEE
>>         802.11a/g/p OFDM Receiver for GNU Radio, SRIF’13, August 12,
>>         2013, Hong Kong, China.". The screenshot of block diagram
>>         given below, In GRC, I didn't find "OFDM Sync Short" block,
>>         any help would be appreciated.
>>
>>         "GRC block diagram from Bloessl et al(2013), An IEEE
>>         802.11a/g/p OFDM Receiver for GNU Radio, SRIF’13, August 12,
>>         2013, Hong Kong, China"
>>
>>         Regards
>>         Rajesh
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>     -- 
>>     Michael Dickens, Mac OS X Programmer
>>
>>     Ettus Research Technical Support
>>
>>     Email: support@ettus.com <mailto:support@ettus.com>
>>
>>     Web: http://www.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------81B534E702899FBB9015A0DD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Opps, should be:</p>
    <p>git checkout maint-3.7</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 9/7/19 04:05, Ron Economos via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>There's a 3.7 version of gr-ieee802-11. In the gr-ieee802-11
        directory, type:<br>
      </p>
      <p>git checkout maint3.7</p>
      <p>Ron<br>
      </p>
      <div class="moz-cite-prefix">On 9/7/19 03:52, Dr. Rajesh Tiwari
        via USRP-users wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com">
        <meta http-equiv="content-type" content="text/html;
          charset=UTF-8">
        <div dir="ltr">HI Michael,
          <div><br>
          </div>
          <div>Many thanks for prompt response. I encountered problem in
            installing module "gr-ieee802-11" as it seems requiring
            gnuradio-companion, version 3.8. I am not able to update my
            GRC version 3.7 to 3.8. Any suggestion, please let me know.</div>
          <div><br>
          </div>
          <div>Regards</div>
          <div>Rajesh</div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Fri, Sep 6, 2019 at 5:14
            PM Michael Dickens &lt;<a
              href="mailto:michael.dickens@ettus.com"
              moz-do-not-send="true">michael.dickens@ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">
              <div dir="ltr">Hi Rajesh - The block "OFDM Sync Short" is
                part of the GR out-of-tree (OOT) module "gr-ieee802-11"
                ... as are many of the other blocks in the image you
                provided. If that OOT is not installed already, it
                shouldn't be difficult to do so. Hope this is useful! -
                MLD</div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Fri, Sep 6, 2019 at
                  5:10 AM Dr. Rajesh Tiwari via USRP-users &lt;<a
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="ltr">
                    <div>Dear All,</div>
                    <div><br>
                    </div>
                    <div>I am trying to decode IEEE 802.11a OFDM
                      receiver as per GRC block diagram used in Paper
                      "Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
                      Receiver for GNU Radio, SRIF’13, August 12, 2013,
                      Hong Kong, China.". The screenshot of block
                      diagram given below, In GRC, I didn't find "OFDM
                      Sync Short" block, any help would be appreciated.</div>
                    <div><br>
                    </div>
                    <div>"GRC block diagram from Bloessl et al(2013), An
                      IEEE 802.11a/g/p OFDM Receiver for GNU
                      Radio, SRIF’13, August 12, 2013, Hong Kong, China"</div>
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
                class="gmail-m_-1906365911473962634gmail_signature">
                <div dir="ltr">Michael Dickens, Mac OS X Programmer<br>
                  <br>
                  Ettus Research Technical Support<br>
                  <br>
                  Email: <a href="mailto:support@ettus.com"
                    target="_blank" moz-do-not-send="true">support@ettus.com</a><br>
                  <br>
                  Web: <a href="http://www.ettus.com" target="_blank"
                    moz-do-not-send="true">http://www.ettus.com</a></div>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------81B534E702899FBB9015A0DD--


--===============1349040126929570782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1349040126929570782==--

