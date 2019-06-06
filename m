Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA54D3691C
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 03:19:13 +0200 (CEST)
Received: from [::1] (port=40712 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYh3g-00012r-9b; Wed, 05 Jun 2019 21:19:12 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:37903)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hYh3c-0000wT-RK
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 21:19:08 -0400
Received: by mail-qt1-f174.google.com with SMTP id l3so843526qtj.5
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 18:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=pWw7Nqth0VMa40rNkdLoKMlRKy7LWpU9dUSlsyjPEcY=;
 b=eji45TlO0Pn2sr7ms7O++O/wNFSCM/MdPiUe/7idJKxvZKvNleCoTPKWvI4oB8Cq6A
 a46249jbTwPaPUtMDGn1LIV57ppP21JGf1R5kWsU45PsBTQO2ee8hnP5uhJy9+nG9WH8
 c9iVoqyvWX3yBAaIlgxWaSB3rLNqzGgcgiCFtinz1avEfI82JZjKE6hAVdfJCc8pgIP8
 OIxp5OMP6kEhbPFHPZ4Vpo6s2Pc6CeN7UM/+sPhet5Tmupc9cOcXwstUK7uJ6ezwySh4
 iMjk2+wA0aCb3IyokJ3KVVdzAbYTil3A1eY5WFgm6b2LAzFw8BShZQCHUj1VFIx/c2QB
 o9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=pWw7Nqth0VMa40rNkdLoKMlRKy7LWpU9dUSlsyjPEcY=;
 b=YJuywj1r+xvQRe1ehkjKY2FWFQIUvSxtAqy4BKNyDthMPlWIhgmkW+y6Spt0PkVwIn
 dJ6eB5gvj7nfxrjUNDOKDyqdQjSUBRGMABhdp5wC3RRnAFv8r89SOiX9bvGimf79bdbO
 +QTxJ5rLsu4rv7B03EXRGeIeBlkEHKqrNgn8XCY0cQH6+oXB6nxf+UGrXVIYWBP/TV5n
 qD38fRnzGJJPY5fiqp15jvvmSA6hxvPQI9mJIwXp6YE5otpTHbXNGMgy8WafNtWrOOHc
 UfV+tTq3lQtJofYMdjzKPFZxb7s0K4LKo8SbiV7H/LbojbVHB/acQohI0pbwZipN3NOK
 D6pA==
X-Gm-Message-State: APjAAAXE55FNGrqsq2k8nMHA378+BKdIxaSRH0w56+sRaLJecvJwS2Cl
 V6cU7tiBPT4Rme6han7lTXFsPf3fWRI=
X-Google-Smtp-Source: APXvYqxJgd2CtluN1Z/JLInDL7ESP0OlmcOyMUX18ev5dSGAUTRJeu6K/uVN49e2ZoexeFa7oVz0Sw==
X-Received: by 2002:ac8:96e:: with SMTP id z43mr36254877qth.55.1559783908123; 
 Wed, 05 Jun 2019 18:18:28 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id j22sm270665qtp.0.2019.06.05.18.18.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 18:18:27 -0700 (PDT)
Message-ID: <5CF869E2.2020706@gmail.com>
Date: Wed, 05 Jun 2019 21:18:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
 <5CF8330D.3050309@gmail.com>
 <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
 <5CF84EF6.1030906@gmail.com>
 <CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com>
In-Reply-To: <CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7555735461594080197=="
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
--===============7555735461594080197==
Content-Type: multipart/alternative;
 boundary="------------050007060403060601070309"

This is a multi-part message in MIME format.
--------------050007060403060601070309
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2019 07:34 PM, Dario Fertonani via USRP-users wrote:
> Sorry, I wrote "coherent" meaning that the problems show up only with 
> signal analyses that go beyond power spectrum.
> For example, the output LTE signal gives CQI=15 (max quality) with 
> dsp_freq=0 and variable CQI (never 15) with dsp_freq = 11.52e6 (in all 
> cases sampling rate is set to 23.04e6 and master clock rate is twice 
> the sampling rate). I do know that LTE is robust to DC offset but this 
> is a more general question on UHD/B210.
You're using only a single channel on the B210?  Because for 
dual-channel the master_clock_rate is limited to 32MHz--that's a 
limitation of the
   way the data clocking works out of the AD9361 RF chip.




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
>>>         code functions properly with DcOffset_Hz=0 but not, for
>>>         example, with DcOffset_Hz=10e6. In all these tests the
>>>         master clock rate is large enough to fit DcOffset_Hz and the
>>>         spectrum of interest easily. Anything obviously wrong?
>>>
>>>         Thanks,
>>>         Dario
>>>
>>>         uhd::tune_request_t uhdTuneRequest( const double
>>>         &CarrierFreq_Hz , const double &DcOffset_Hz )
>>>         {
>>>             uhd::tune_request_t tuneRequest( CarrierFreq_Hz -
>>>         DcOffset_Hz );
>>>             tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
>>>             tuneRequest.dsp_freq_policy =
>>>         uhd::tune_request_t::POLICY_MANUAL;
>>>             tuneRequest.dsp_freq = DcOffset_Hz;
>>>             return tuneRequest;
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
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------050007060403060601070309
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/05/2019 07:34 PM, Dario Fertonani
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Sorry, I wrote "coherent" meaning that the problems
        show up only with signal analyses that go beyond power spectrum.
        <div>For example, the output LTE signal gives CQI=15 (max
          quality) with dsp_freq=0 and variable CQI (never 15) with
          dsp_freq = 11.52e6 (in all cases sampling rate is set to
          23.04e6 and master clock rate is twice the sampling rate). I
          do know that LTE is robust to DC offset but this is a more
          general question on UHD/B210.</div>
      </div>
    </blockquote>
    You're using only a single channel on the B210?  Because for
    dual-channel the master_clock_rate is limited to 32MHz--that's a
    limitation of the<br>
      way the data clocking works out of the AD9361 RF chip.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Jun 5, 2019 at 4:23 PM
          Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
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
                      moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank">usrp-users@lists.ettus.com</a>&gt;
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
                      <a moz-do-not-send="true"
class="gmail-m_-1921377858939781567gmail-m_8104242665193802923moz-txt-link-freetext"
href="https://files.ettus.com/manual/structuhd_1_1tune__request__t.html"
                        target="_blank">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a><br>
                      <br>
                      <br>
                      <br>
                    </div>
                    _______________________________________________<br>
                    USRP-users mailing list<br>
                    <a moz-do-not-send="true"
                      href="mailto:USRP-users@lists.ettus.com"
                      target="_blank">USRP-users@lists.ettus.com</a><br>
                    <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                      rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
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
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------050007060403060601070309--


--===============7555735461594080197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7555735461594080197==--

