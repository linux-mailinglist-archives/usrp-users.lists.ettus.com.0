Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 113633685B
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 01:53:21 +0200 (CEST)
Received: from [::1] (port=57164 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYfiZ-0006Ap-1I; Wed, 05 Jun 2019 19:53:19 -0400
Received: from resqmta-po-05v.sys.comcast.net ([96.114.154.164]:56150)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1hYfiV-0005ms-MT
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 19:53:15 -0400
Received: from resomta-po-17v.sys.comcast.net ([96.114.154.241])
 by resqmta-po-05v.sys.comcast.net with ESMTP
 id YfVzhyhhxF9fpYfhqhLodm; Wed, 05 Jun 2019 23:52:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1559778754;
 bh=nIK+RlvoxHmZZ5VlwtmU0ku2Nzyhj91TSX/h9ne+QXQ=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=oUgOJg2LiXWdmZl7f3aDxRZns1CmKefhLL+BZM4KwVdu88Oz/Acojt9wZQX0pXuWD
 xsPQLf6SCFg7go6rxv7vOHEo/AGcvBXmHmKhzxL/n9SAa3lzciEwaal4w7Uywv1JcD
 g6lqYlXThCOICcAJlhdDta6hCA92GPLAfqlOduq3FwMK5t3qZi039JMDrhxbsNCrcB
 Wsqt1iubqh/38FM61MbGON/fjmpBd6UsS2D8x6Gq1eyU3r4Wyi6LvIc60koiK+qTn/
 D9GIuMIeT6yv4MBlu1PZIJhADrqFf/2nW0X9v1MPVBDhMUDDp+G7SmWvE6xIOonJVG
 xpLgkya52wvMA==
Received: from [IPv6:2601:647:4200:ea30:c950:2825:22a9:6257]
 ([IPv6:2601:647:4200:ea30:c950:2825:22a9:6257])
 by resomta-po-17v.sys.comcast.net with ESMTPSA
 id Yfhph3cPU0ExbYfhqhBKRN; Wed, 05 Jun 2019 23:52:34 +0000
X-Xfinity-VMeta: sc=0;st=legit
To: usrp-users@lists.ettus.com
References: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
 <5CF8330D.3050309@gmail.com>
 <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
 <5CF84EF6.1030906@gmail.com>
 <CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com>
Message-ID: <26d52e06-f204-6bbd-bead-b7782c09ae83@comcast.net>
Date: Wed, 5 Jun 2019 16:52:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Use of dsp_freq in uhd::tune_request_t
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
Content-Type: multipart/mixed; boundary="===============0882863859333193794=="
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
--===============0882863859333193794==
Content-Type: multipart/alternative;
 boundary="------------79CDAAB5D6DDEC85235B69D4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------79CDAAB5D6DDEC85235B69D4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I wonder if the 2X master clock rate may be an issue. I use offset 
tuning all the time on my B210, but at smaller sample rates and offsets 
(10 Msps, 4 MHz offset and 4X master clock rate).

Maybe a test with 10 MHz LTE versus 20 MHz would be useful?

Ron

On 6/5/19 16:34, Dario Fertonani via USRP-users wrote:
> Sorry, I wrote "coherent" meaning that the problems show up only with 
> signal analyses that go beyond power spectrum.
> For example, the output LTE signal gives CQI=15 (max quality) with 
> dsp_freq=0 and variable CQI (never 15) with dsp_freq = 11.52e6 (in all 
> cases sampling rate is set to 23.04e6 and master clock rate is twice 
> the sampling rate). I do know that LTE is robust to DC offset but this 
> is a more general question on UHD/B210.
>
> On Wed, Jun 5, 2019 at 4:23 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/05/2019 07:12 PM, Dario Fertonani wrote:
>>     Thank you Marcus. I should have mentioned that I tried removing
>>     that line, with no success. With non-zero dsp_freq, the power
>>     spectrum looks OK but the (coherent) signal quality is terrible.
>     OK, that's a different level of problem.
>
>     You're trying to maintain coherence across more than one B210?
>
>
>>
>>     On Wed, Jun 5, 2019 at 2:25 PM Marcus D. Leech via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>         On 06/05/2019 05:20 PM, Dario Fertonani via USRP-users wrote:
>>>         I'm trying to move the "DC offset" out of the main spectrum
>>>         by using the dsp_freq field in uhd::tune_request_t. This
>>>         doesn't seem to work on B210, meaning that the following
>>>         code functions properly with DcOffset_Hz=0 but not, for
>>>         example, with DcOffset_Hz=10e6. In all these tests the
>>>         master clock rate is large enough to fit DcOffset_Hz and the
>>>         spectrum of interest easily. Anything obviously wrong?
>>>
>>>         Thanks,
>>>         Dario
>>>
>>>         uhd::tune_request_t uhdTuneRequest( const double
>>>         &CarrierFreq_Hz , const double &DcOffset_Hz )
>>>         {
>>>             uhd::tune_request_t tuneRequest( CarrierFreq_Hz -
>>>         DcOffset_Hz );
>>>             tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
>>>             tuneRequest.dsp_freq_policy =
>>>         uhd::tune_request_t::POLICY_MANUAL;
>>>             tuneRequest.dsp_freq = DcOffset_Hz;
>>>             return tuneRequest;
>>>         }
>>>
>>>
>>         You shouldn't need to use POLICY_MANUAL at all, since the
>>         tune_request_t supports offset-tuning directly:
>>
>>         https://files.ettus.com/manual/structuhd_1_1tune__request__t.html
>>
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------79CDAAB5D6DDEC85235B69D4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I wonder if the 2X master clock rate may be an issue. I use
      offset tuning all the time on my B210, but at smaller sample rates
      and offsets (10 Msps, 4 MHz offset and 4X master clock rate).</p>
    <p>Maybe a test with 10 MHz LTE versus 20 MHz would be useful?</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 6/5/19 16:34, Dario Fertonani via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Sorry, I wrote "coherent" meaning that the problems
        show up only with signal analyses that go beyond power spectrum.
        <div>For example, the output LTE signal gives CQI=15 (max
          quality) with dsp_freq=0 and variable CQI (never 15) with
          dsp_freq = 11.52e6 (in all cases sampling rate is set to
          23.04e6 and master clock rate is twice the sampling rate). I
          do know that LTE is robust to DC offset but this is a more
          general question on UHD/B210.</div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Jun 5, 2019 at 4:23 PM
          Marcus D. Leech &lt;<a href="mailto:patchvonbraun@gmail.com"
            moz-do-not-send="true">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div class="gmail-m_-1921377858939781567moz-cite-prefix">On
              06/05/2019 07:12 PM, Dario Fertonani wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>Thank you Marcus. I should have mentioned that I
                  tried removing that line, with no success. With
                  non-zero dsp_freq, the power spectrum looks OK but the
                  (coherent) signal quality is terrible.</div>
              </div>
            </blockquote>
            OK, that's a different level of problem.<br>
            <br>
            You're trying to maintain coherence across more than one
            B210?<br>
            <br>
            <br>
            <blockquote type="cite">
              <div dir="ltr"><br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Wed, Jun 5, 2019
                    at 2:25 PM Marcus D. Leech via USRP-users &lt;<a
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div bgcolor="#FFFFFF">
                      <div
class="gmail-m_-1921377858939781567gmail-m_8104242665193802923moz-cite-prefix">On
                        06/05/2019 05:20 PM, Dario Fertonani via
                        USRP-users wrote:<br>
                      </div>
                      <blockquote type="cite">
                        <div dir="ltr">
                          <div><font face="arial, sans-serif">I'm trying
                              to move the "DC offset" out of the main
                              spectrum by using the dsp_freq field in </font>uhd::tune_request_t.
                            This doesn't seem to work on B210, meaning
                            that the following code functions properly
                            with DcOffset_Hz=0 but not, for example,
                            with DcOffset_Hz=10e6. In all these tests
                            the master clock rate is large enough to fit
                            DcOffset_Hz and the spectrum of interest
                            easily. Anything obviously wrong?</div>
                          <div><br>
                          </div>
                          <div>Thanks,</div>
                          <div>Dario</div>
                          <font face="courier new, monospace">
                            <div><font face="courier new, monospace"><br>
                              </font></div>
                            uhd::tune_request_t uhdTuneRequest( const
                            double &amp;CarrierFreq_Hz , const double
                            &amp;</font><span>DcOffset_Hz</span><font
                            face="courier new, monospace"> )<br>
                            {<br>
                                uhd::tune_request_t tuneRequest(
                            CarrierFreq_Hz - </font><span>DcOffset_Hz</span><font
                            face="courier new, monospace"> );<br>
                                tuneRequest.args = uhd::device_addr_t(
                            "mode_n=integer" );<br>
                                tuneRequest.dsp_freq_policy =
                            uhd::tune_request_t::POLICY_MANUAL;<br>
                                tuneRequest.dsp_freq = DcOffset_Hz;<br>
                                return tuneRequest;<br>
                            }</font><br>
                        </div>
                        <br>
                        <br>
                      </blockquote>
                      You shouldn't need to use POLICY_MANUAL at all,
                      since the tune_request_t supports offset-tuning
                      directly:<br>
                      <br>
                      <a
class="gmail-m_-1921377858939781567gmail-m_8104242665193802923moz-txt-link-freetext"
href="https://files.ettus.com/manual/structuhd_1_1tune__request__t.html"
                        target="_blank" moz-do-not-send="true">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a><br>
                      <br>
                      <br>
                      <br>
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
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
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

--------------79CDAAB5D6DDEC85235B69D4--


--===============0882863859333193794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0882863859333193794==--

