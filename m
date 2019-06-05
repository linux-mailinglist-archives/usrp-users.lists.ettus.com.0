Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8101C367D9
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 01:24:21 +0200 (CEST)
Received: from [::1] (port=51858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYfGW-0004wt-Gv; Wed, 05 Jun 2019 19:24:20 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:33759)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hYfGS-0004Wp-JZ
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 19:24:16 -0400
Received: by mail-qt1-f177.google.com with SMTP id 14so631570qtf.0
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 16:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=loP5eHS8PXb+q/2rMQe1zDKISuTrIE0IXn31FVGMdHs=;
 b=BqxPL1yAws6Cg1zx1w9V6Dm1oiE1DFr2zXQEWl2unTR40i7k1/WAwmo9B24lKplXNo
 XB2lbvjpYuqBgw2lZ3ydw1ldoBcQvMRF7jAj2+n01D0VKGSt5Gg0TPw8yqMpdSyTErFy
 ffuOQPaJNm3dtuwdn0YwpmisCIFbIvdJhU/dDaiEov+Ux/R2ePNNdBCB3RWX9vKrCwoy
 T51wenkCkJfGSwj8Ugby8fSaBMVCDCBYZ7E5noBn5tIJJ3gTFmNoY5thgpJIXckiDSp9
 8R8WWMq1Rp8R6uwHX5X8cc07sr7kCzvWBxrr7NNuYR3k9XzqgFSEJh072AeWf2firWrb
 dBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=loP5eHS8PXb+q/2rMQe1zDKISuTrIE0IXn31FVGMdHs=;
 b=KIq66/x0YqQjjx9Pkz5rOIjITq8ZFdJRf3UybDsbc/h3eBFkvsRTbEvxHUYjW7Y8L4
 K5iH5ZLaCSZXxhJxPsluGucMOXohzDJWauC2ueVBp/oiVFp0b4hiqakMBOXYx0IxQ9c2
 0fyozDEyEOJ1/tssjzAjteZ+nwNRJBJgsphOv6LPAWo/rSZDg4Zn5vFRoPT4hVpR7h1D
 duj9XVNT0eGkWdFQWAZDgSmcrQGpqtQIN6glwTANoKmGNNTMKNldF7kODZKGKi16JvpT
 midLwY8nPAZ5dIIzLr1SwC44GtMr44nKXt/37K1S+wzl+U9OJAlcwYAbgXgmDACnRi3s
 QpGg==
X-Gm-Message-State: APjAAAWPZfYoZi64Ab3W43ENv56ZtSyOdV4iUhg2FxLLv2n8DObMGRUd
 CmRD0X9nQD8McwtM7+pBZZ26rjpswNk=
X-Google-Smtp-Source: APXvYqwwhP6pUC/AdAj7RD2B4i7/D0NZi9oTkIkB37jIQw+aXHdUgLFB/ILf87iwkgJ3Khndh8tPBg==
X-Received: by 2002:a0c:d01b:: with SMTP id u27mr18184568qvg.88.1559777015902; 
 Wed, 05 Jun 2019 16:23:35 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id g188sm24250qkc.52.2019.06.05.16.23.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 16:23:35 -0700 (PDT)
Message-ID: <5CF84EF6.1030906@gmail.com>
Date: Wed, 05 Jun 2019 19:23:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Dario Fertonani <dario.fertonani@gmail.com>
References: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
 <5CF8330D.3050309@gmail.com>
 <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
In-Reply-To: <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6451140894605877622=="
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
--===============6451140894605877622==
Content-Type: multipart/alternative;
 boundary="------------070202060006090304020109"

This is a multi-part message in MIME format.
--------------070202060006090304020109
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2019 07:12 PM, Dario Fertonani wrote:
> Thank you Marcus. I should have mentioned that I tried removing that 
> line, with no success. With non-zero dsp_freq, the power spectrum 
> looks OK but the (coherent) signal quality is terrible.
OK, that's a different level of problem.

You're trying to maintain coherence across more than one B210?


>
> On Wed, Jun 5, 2019 at 2:25 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 06/05/2019 05:20 PM, Dario Fertonani via USRP-users wrote:
>>     I'm trying to move the "DC offset" out of the main spectrum by
>>     using the dsp_freq field in uhd::tune_request_t. This doesn't
>>     seem to work on B210, meaning that the following code functions
>>     properly with DcOffset_Hz=0 but not, for example,
>>     with DcOffset_Hz=10e6. In all these tests the master clock rate
>>     is large enough to fit DcOffset_Hz and the spectrum of interest
>>     easily. Anything obviously wrong?
>>
>>     Thanks,
>>     Dario
>>
>>     uhd::tune_request_t uhdTuneRequest( const double &CarrierFreq_Hz
>>     , const double &DcOffset_Hz )
>>     {
>>         uhd::tune_request_t tuneRequest( CarrierFreq_Hz - DcOffset_Hz );
>>         tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
>>         tuneRequest.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>>         tuneRequest.dsp_freq = DcOffset_Hz;
>>         return tuneRequest;
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


--------------070202060006090304020109
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/05/2019 07:12 PM, Dario Fertonani
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Thank you Marcus. I should have mentioned that I tried
          removing that line, with no success. With non-zero dsp_freq,
          the power spectrum looks OK but the (coherent) signal quality
          is terrible.</div>
      </div>
    </blockquote>
    OK, that's a different level of problem.<br>
    <br>
    You're trying to maintain coherence across more than one B210?<br>
    <br>
    <br>
    <blockquote
cite="mid:CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Wed, Jun 5, 2019 at 2:25
            PM Marcus D. Leech via USRP-users &lt;<a
              moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
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
              <a moz-do-not-send="true"
                class="gmail-m_8104242665193802923moz-txt-link-freetext"
href="https://files.ettus.com/manual/structuhd_1_1tune__request__t.html"
                target="_blank">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a><br>
              <br>
              <br>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070202060006090304020109--


--===============6451140894605877622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6451140894605877622==--

