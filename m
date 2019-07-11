Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 125646604D
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jul 2019 21:59:16 +0200 (CEST)
Received: from [::1] (port=44262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlfDh-00066L-Ky; Thu, 11 Jul 2019 15:59:09 -0400
Received: from mail-qt1-f176.google.com ([209.85.160.176]:43207)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hlfDe-00060z-RL
 for usrp-users@lists.ettus.com; Thu, 11 Jul 2019 15:59:06 -0400
Received: by mail-qt1-f176.google.com with SMTP id w17so5672827qto.10
 for <usrp-users@lists.ettus.com>; Thu, 11 Jul 2019 12:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=ZgmbtRgnual+RUrSWq41QvEefaxMulf6YHmZODyI6Zc=;
 b=mBurYlUzXUzhjdrqEV1bMbYWGvpxuCpBpiUfxII8SVHXwqqtEfkQl6yiOIjTryDqPu
 5+qfPRmn5Wwfv770i1RIJ36+3x4dQ+0UeaE+0PtX93GQilEAIgke+DGXQHTsy/opgamh
 3ymEz+jGCQpq3sxT3lp1Q1CyEqTiQgCaMtQT4lqZ9ZRAE5sDD/vz4YimmxOHtVVypeYT
 zkp9vInmXlsx/LdJtkGNYveUbnghYoHgCh6t5nURqMiMSRIN82Yfanyk6kHv04WkyEBT
 fS2ncY6IQfMkQkRY59EcdlqiyuJuCbugKTf6HHRPP+nVJoMJl7rri9YveafL1KbHB/mH
 7plg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=ZgmbtRgnual+RUrSWq41QvEefaxMulf6YHmZODyI6Zc=;
 b=OSODZwQTkP0RUBwdbRgZltDLAWSo80EyiE3jPAvneRpdB5q33GJ54KJ9aVocX+NemJ
 UKu0ZZjBOYDeH5eoNVZU1pcgFdHooVitoKRBDDRRTivVTs+RyL0AkIW+QYijJkTgXXiG
 pzy1Rr/+7szibTd/LK9PD1zNimANREwTC4VHRDp36MJUbvx/1tltP2rRLNvxgAU3EFh+
 +BWrCdlNyWX6sVyuKWYRUU4QI4vs0IFaVVCnEkfrsiBk+JGQQEjrbVHDbr85lvW0Tn4I
 QA+MGQ8h+fd6giaVlxur5xjkpe3lb9EkCU8lIEEncZCtiIop/YFh614TxEJw72DnBFt7
 glgQ==
X-Gm-Message-State: APjAAAWHwuqU8cdsPojr0fQGEoK++kwcnlmAmWKQ9J7agnMKUHzq48U5
 EtwJXVOazVPF6tmpkQfA4OtpA7Dl
X-Google-Smtp-Source: APXvYqwjOXkWE9ts18xH1Trvro135n8Y/bA9t+7VZXAZeL4rR2AhlIISY/lTwcv2rhyvXEEzWg6gNA==
X-Received: by 2002:ac8:ce:: with SMTP id d14mr3224754qtg.149.1562875106076;
 Thu, 11 Jul 2019 12:58:26 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id z1sm2975906qkg.103.2019.07.11.12.58.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 12:58:25 -0700 (PDT)
Message-ID: <5D2794E0.6040806@gmail.com>
Date: Thu, 11 Jul 2019 15:58:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: lc <zidane2006@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAHP8DwK0jVZWxnDmXfVBiyJ2DzJDs6xXFOoRbhRmgWGv7HNO_w@mail.gmail.com>
 <5D276AC5.8090109@gmail.com>
 <CAHP8DwJ1CYieaWtvPD=psYyFA22C77E5YDpSWDxs_rkU3t3MfA@mail.gmail.com>
In-Reply-To: <CAHP8DwJ1CYieaWtvPD=psYyFA22C77E5YDpSWDxs_rkU3t3MfA@mail.gmail.com>
Subject: Re: [USRP-users] [B210] Read raw ADC data directly in Matlab
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
Content-Type: multipart/mixed; boundary="===============3966060008711306869=="
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
--===============3966060008711306869==
Content-Type: multipart/alternative;
 boundary="------------020000090508030803000604"

This is a multi-part message in MIME format.
--------------020000090508030803000604
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/11/2019 03:53 PM, lc wrote:
> Thanks for all the response.
> I should make my question more specific instead of using raw adc data 
> which is causing confusion.
> The data I want to dump is (name based on b200.v)
> rx_codec_d[11:0] which is directly from ADC
> or
> tx_data0[31:20]
> tx_data0[15:4]
> which are  processed after b200_io
>
> But I don't want FPGA to further touch the data.
> From Ian's suggestion, seems I need to
>  1. configure the USRP so that sample_rate=master_clock_rate
>  2. use a tuning policy that doesn’t imply the internal CORDIC 
> processor in the FPGA to perform any portion of the tuning.
>
> So my question is do I need to hack UHD in order to achieve item 2?
> Or current matlab API could do this configuration.
>
> Thanks
> Chao
>
>
Item 2 above can be achieved with the normal tuning API in UHD.

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a9b61448f392466e20572fdcb042e8ec6

and

https://files.ettus.com/manual/structuhd_1_1tune__request__t.html



--------------020000090508030803000604
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/11/2019 03:53 PM, lc wrote:<br>
    </div>
    <blockquote
cite="mid:CAHP8DwJ1CYieaWtvPD=psYyFA22C77E5YDpSWDxs_rkU3t3MfA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Thanks for all the response.
        <div>I should make my question more specific instead of using
          raw adc data which is causing confusion.</div>
        <div>The data I want to dump is (name based on b200.v)</div>
        <div><span
            style="color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">rx_codec_d[11:0]
            which is directly from ADC</span></div>
        <div>or</div>
        <div><span
            style="color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">tx_data0[</span><span
            class="gmail-pl-c1"
            style="box-sizing:border-box;color:rgb(0,92,197);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">31</span><span
            style="color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">:</span><span
            class="gmail-pl-c1"
            style="box-sizing:border-box;color:rgb(0,92,197);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">20</span><span
            style="color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">]</span>  <br>
        </div>
        <div><span
            style="color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">tx_data0[</span><span
            class="gmail-pl-c1"
            style="box-sizing:border-box;color:rgb(0,92,197);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">15</span><span
            style="color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">:</span><span
            class="gmail-pl-c1"
            style="box-sizing:border-box;color:rgb(0,92,197);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">4</span><span
            style="color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation
Mono&quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">]</span> </div>
        <div>which are  processed after b200_io<br>
        </div>
        <div><br>
        </div>
        <div>But I don't want FPGA to further touch the data.</div>
        <div>From Ian's suggestion, seems I need to </div>
        <div> 1. configure the USRP so that
          sample_rate=master_clock_rate<br>
        </div>
        <div> 2. use a tuning policy that doesn’t imply the internal
          CORDIC processor in the FPGA to perform any portion of the
          tuning.</div>
        <div><br>
        </div>
        <div>So my question is do I need to hack UHD in order to achieve
          item 2?</div>
        <div>Or current matlab API could do this configuration.</div>
        <div><br>
        </div>
        <div>Thanks</div>
        <div>Chao</div>
        <div><br>
        </div>
        <br>
      </div>
    </blockquote>
    Item 2 above can be achieved with the normal tuning API in UHD.<br>
    <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a9b61448f392466e20572fdcb042e8ec6">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a9b61448f392466e20572fdcb042e8ec6</a><br>
    <br>
    and<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/structuhd_1_1tune__request__t.html">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a><br>
    <br>
    <br>
  </body>
</html>

--------------020000090508030803000604--


--===============3966060008711306869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3966060008711306869==--

