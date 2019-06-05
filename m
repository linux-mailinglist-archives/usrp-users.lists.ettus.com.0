Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D78EC367D8
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 01:23:55 +0200 (CEST)
Received: from [::1] (port=50436 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYfG6-0004fM-PS; Wed, 05 Jun 2019 19:23:54 -0400
Received: from resqmta-po-08v.sys.comcast.net ([96.114.154.167]:50856)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1hYfG3-0004WZ-Ih
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 19:23:51 -0400
Received: from resomta-po-17v.sys.comcast.net ([96.114.154.241])
 by resqmta-po-08v.sys.comcast.net with ESMTP
 id YeSbhFZYOFpWYYfFOhbrTY; Wed, 05 Jun 2019 23:23:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1559776990;
 bh=qV5G49XrHrvBFGtEPy4c+cd7IkZwlWrra62UaR7bcg4=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=vPWHN2k6Om0g/nWME4x/XHiODmv817sm23NYJSD2eNQEfBzc7YRyBOY3P9O7EVrnc
 dWUx7N5ZzKJ9F01j0WtH2ekj1i2Ssft34Vk4I5GlAn6o36xz1WFtiIDXi7ZDgDOHSF
 glQ1MrrslrmDb6jQUzFvzPk5FgVYIn0h0n+XtyKIW732KgWIs96HrYthGs526ntJHg
 8d1hOuWVT+adi6B9WRCE/5TGV6DGZUEJrBb4Vp8QfHjjr4L4nXNvydciCTUXnK9L4U
 ufbTIVyP4OVQjvhNwpH4FnIbKPSfbjj91QIUj9HNP3BE3Sw5OQzlU+PhJl8hZFj27u
 eRc9RUTLHpj8w==
Received: from [IPv6:2601:647:4200:ea30:c950:2825:22a9:6257]
 ([IPv6:2601:647:4200:ea30:c950:2825:22a9:6257])
 by resomta-po-17v.sys.comcast.net with ESMTPSA
 id YfFMh3WGb0ExbYfFOhBIrs; Wed, 05 Jun 2019 23:23:10 +0000
X-Xfinity-VMeta: sc=0;st=legit
To: usrp-users@lists.ettus.com
References: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
 <5CF8330D.3050309@gmail.com>
 <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
Message-ID: <3e33c11a-ac28-02c3-f8c0-b10cdf067e0f@comcast.net>
Date: Wed, 5 Jun 2019 16:23:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0344964665488581911=="
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
--===============0344964665488581911==
Content-Type: multipart/alternative;
 boundary="------------788647B81B62E356EC2118D0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------788647B81B62E356EC2118D0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

10 MHz is a lot of offset. The master clock rate probably needs to be 40 
MHz or above.

Ron

On 6/5/19 16:12, Dario Fertonani via USRP-users wrote:
> Thank you Marcus. I should have mentioned that I tried removing that 
> line, with no success. With non-zero dsp_freq, the power spectrum 
> looks OK but the (coherent) signal quality is terrible.
>
> On Wed, Jun 5, 2019 at 2:25 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 06/05/2019 05:20 PM, Dario Fertonani via USRP-users wrote:
>>     I'm trying to move the "DC offset" out of the main spectrum by
>>     using the dsp_freq field in uhd::tune_request_t. This doesn't
>>     seem to work on B210, meaning that the following code functions
>>     properly with DcOffset_Hz=0 but not, for example,
>>     with DcOffset_Hz=10e6. In all these tests the master clock rate
>>     is large enough to fit DcOffset_Hz and the spectrum of interest
>>     easily. Anything obviously wrong?
>>
>>     Thanks,
>>     Dario
>>
>>     uhd::tune_request_t uhdTuneRequest( const double &CarrierFreq_Hz
>>     , const double &DcOffset_Hz )
>>     {
>>         uhd::tune_request_t tuneRequest( CarrierFreq_Hz - DcOffset_Hz );
>>         tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
>>         tuneRequest.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>>         tuneRequest.dsp_freq = DcOffset_Hz;
>>         return tuneRequest;
>>     }
>>
>>
>     You shouldn't need to use POLICY_MANUAL at all, since the
>     tune_request_t supports offset-tuning directly:
>
>     https://files.ettus.com/manual/structuhd_1_1tune__request__t.html
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------788647B81B62E356EC2118D0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>10 MHz is a lot of offset. The master clock rate probably needs
      to be 40 MHz or above.</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 6/5/19 16:12, Dario Fertonani via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Thank you Marcus. I should have mentioned that I tried
          removing that line, with no success. With non-zero dsp_freq,
          the power spectrum looks OK but the (coherent) signal quality
          is terrible.</div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Wed, Jun 5, 2019 at 2:25
            PM Marcus D. Leech via USRP-users &lt;<a
              href="mailto:usrp-users@lists.ettus.com"
              moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <div class="gmail-m_8104242665193802923moz-cite-prefix">On
                06/05/2019 05:20 PM, Dario Fertonani via USRP-users
                wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">
                  <div><font face="arial, sans-serif">I'm trying to move
                      the "DC offset" out of the main spectrum by using
                      the dsp_freq field in </font>uhd::tune_request_t.
                    This doesn't seem to work on B210, meaning that the
                    following code functions properly with DcOffset_Hz=0
                    but not, for example, with DcOffset_Hz=10e6. In all
                    these tests the master clock rate is large enough to
                    fit DcOffset_Hz and the spectrum of interest easily.
                    Anything obviously wrong?</div>
                  <div><br>
                  </div>
                  <div>Thanks,</div>
                  <div>Dario</div>
                  <font face="courier new, monospace">
                    <div><font face="courier new, monospace"><br>
                      </font></div>
                    uhd::tune_request_t uhdTuneRequest( const double
                    &amp;CarrierFreq_Hz , const double &amp;</font><span
                    style="font-family:&quot;courier
                    new&quot;,monospace">DcOffset_Hz</span><font
                    face="courier new, monospace"> )<br>
                    {<br>
                        uhd::tune_request_t tuneRequest( CarrierFreq_Hz
                    - </font><span style="font-family:&quot;courier
                    new&quot;,monospace">DcOffset_Hz</span><font
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
              You shouldn't need to use POLICY_MANUAL at all, since the
              tune_request_t supports offset-tuning directly:<br>
              <br>
              <a
                class="gmail-m_8104242665193802923moz-txt-link-freetext"
href="https://files.ettus.com/manual/structuhd_1_1tune__request__t.html"
                target="_blank" moz-do-not-send="true">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a><br>
              <br>
              <br>
              <br>
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

--------------788647B81B62E356EC2118D0--


--===============0344964665488581911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0344964665488581911==--

