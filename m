Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E2D366CE
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2019 23:25:15 +0200 (CEST)
Received: from [::1] (port=33390 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYdPG-00087T-7F; Wed, 05 Jun 2019 17:25:14 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:37516)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hYdPC-0007zN-Hw
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 17:25:10 -0400
Received: by mail-qt1-f172.google.com with SMTP id y57so291334qtk.4
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 14:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=m0pv3crkTmkR/4QwA82+2IolYFAJycvu/oAOO5NghNY=;
 b=pEhWO/0kHgB6f26RSW9GBEyio5X4YTk3ZrC61qMCZ+uazTCyZY+7/yh7Syu7SnvEVg
 JAM4RZ3plQdXx6CMHx+F+HBgvFJ/jAbFvSnn7hTrZqL64/bJDBpvxtCSMI7DrOGtlMxu
 25llV0Gw188lq8gIbRolsUgRZNjou6k9Sc2gQ9rADySKSNcaw1qU7naJWz8k5fZLQc8H
 KDy04v4Z8bx8bj0Fcv+phRYt6RMr2icepD6basd5rvSCR3OSbqt1TvIvCJFs0OwyIUbg
 hZEt4gxGTPggPb2ggh5ocWLH5OLuvKDFAydNyGc2bXOFy6cIYy8pzKyM34Ea4HpiRJ8n
 lnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=m0pv3crkTmkR/4QwA82+2IolYFAJycvu/oAOO5NghNY=;
 b=QUKb3yOvL19f6LkB8J2uU2xzpfjaE9PT0KrhXY9/i5ey0GhiRRGusQBZyks5wbPBaA
 GgZ4xb2u30KmYQ26gtaKvh9vNvM/Dj/OQvITDkBjApwx/ANUd2i19mejnhHqb4stecwy
 ymhRex7EjPtiazpjMIi2922e82BoLplmoCkNPhtz5OyMNlOuFot8IN2F+auLZml4mfbQ
 voFJK4fQD9WZgezL0lppCzOIEclYG6Q0hjNh2B/C8qmoDqPgnybrY4cSo7fE78r23X7+
 28A+ONyn00GeXZnuWYu8TJaPEQ6vgxzJMrnBq2QxvxHgkd0HHvx6sfpwBw9jsXAjPnWk
 L5aw==
X-Gm-Message-State: APjAAAWkmb9EPRhvFqI+w4kSGPe22fvYq68bs6c1tcw/UhCsCr8X/wAf
 9qKbsjo+OyerdFmK87rSHrFblkpGjMI=
X-Google-Smtp-Source: APXvYqxDiwtNP3joVx3C6WMrrKIwU1uZIms1HVk1Y5nEf1MLdf04cCrLBjY2DLYfQ+jWk4L0ZtjTCQ==
X-Received: by 2002:ac8:2bbd:: with SMTP id m58mr37175541qtm.225.1559769869990; 
 Wed, 05 Jun 2019 14:24:29 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id n67sm12180611qte.42.2019.06.05.14.24.29
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:24:29 -0700 (PDT)
Message-ID: <5CF8330D.3050309@gmail.com>
Date: Wed, 05 Jun 2019 17:24:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
In-Reply-To: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5597299845138603105=="
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
--===============5597299845138603105==
Content-Type: multipart/alternative;
 boundary="------------010304070001080302090005"

This is a multi-part message in MIME format.
--------------010304070001080302090005
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2019 05:20 PM, Dario Fertonani via USRP-users wrote:
> I'm trying to move the "DC offset" out of the main spectrum by using 
> the dsp_freq field in uhd::tune_request_t. This doesn't seem to work 
> on B210, meaning that the following code functions properly 
> with DcOffset_Hz=0 but not, for example, with DcOffset_Hz=10e6. In all 
> these tests the master clock rate is large enough to fit DcOffset_Hz 
> and the spectrum of interest easily. Anything obviously wrong?
>
> Thanks,
> Dario
>
> uhd::tune_request_t uhdTuneRequest( const double &CarrierFreq_Hz , 
> const double &DcOffset_Hz )
> {
>     uhd::tune_request_t tuneRequest( CarrierFreq_Hz - DcOffset_Hz );
>     tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
>     tuneRequest.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>     tuneRequest.dsp_freq = DcOffset_Hz;
>     return tuneRequest;
> }
>
>
You shouldn't need to use POLICY_MANUAL at all, since the tune_request_t 
supports offset-tuning directly:

https://files.ettus.com/manual/structuhd_1_1tune__request__t.html




--------------010304070001080302090005
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/05/2019 05:20 PM, Dario Fertonani
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><font face="arial, sans-serif">I'm trying to move the "DC
            offset" out of the main spectrum by using the dsp_freq field
            in </font>uhd::tune_request_t. This doesn't seem to work on
          B210, meaning that the following code functions properly
          with DcOffset_Hz=0 but not, for example,
          with DcOffset_Hz=10e6. In all these tests the master clock
          rate is large enough to fit DcOffset_Hz and the spectrum of
          interest easily. Anything obviously wrong?</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Dario</div>
        <font face="courier new, monospace">
          <div><font face="courier new, monospace"><br>
            </font></div>
          uhd::tune_request_t uhdTuneRequest( const double
          &amp;CarrierFreq_Hz , const double &amp;</font><span
          style="font-family:&quot;courier new&quot;,monospace">DcOffset_Hz</span><font
          face="courier new, monospace"> )<br>
          {<br>
              uhd::tune_request_t tuneRequest( CarrierFreq_Hz - </font><span
          style="font-family:&quot;courier new&quot;,monospace">DcOffset_Hz</span><font
          face="courier new, monospace"> );<br>
              tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );<br>
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
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/structuhd_1_1tune__request__t.html">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a><br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------010304070001080302090005--


--===============5597299845138603105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5597299845138603105==--

