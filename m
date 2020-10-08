Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8739287BE7
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 20:54:37 +0200 (CEST)
Received: from [::1] (port=51756 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQb3i-0001s6-5X; Thu, 08 Oct 2020 14:54:34 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:33956)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kQb3d-0001jU-Rx
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 14:54:29 -0400
Received: by mail-qk1-f169.google.com with SMTP id x20so1100421qkn.1
 for <usrp-users@lists.ettus.com>; Thu, 08 Oct 2020 11:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=dXSHUCa9GnxKT/MnUZ43jBVHGLm01HPwin8UOIhh0QQ=;
 b=nBs/DB9cQcBr3GLkOGUu0dLCNuxbZSGMr5esdEaID5bjwLwIA2upKmiddX6CTpKl3f
 STyOHOdxomw9V7WdLXBiN0pC9F7527ht6MQHxgze4Fi96IhJ1104awaPxBs6/SVFcNIw
 gWhIcbmyO7tiPSOHZi5VPdhvFvFx2Nz0owBq0KwBSoDFueHzH/dfNXERRE5y+tP2B3zY
 aCj8gqxqDGewlxM8HZZoW18kUj/gg5sw9WbAyyAKq2xUfw+3j1F/ezUqBb7bPfc4mX6O
 aMfO3Bj9qXGNAgDNur6FWjlepiIPZzh7ghpX+xmYC1vycToY+9n6ogQQ0wow/2BaBtfL
 +ZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=dXSHUCa9GnxKT/MnUZ43jBVHGLm01HPwin8UOIhh0QQ=;
 b=mVQZ81BTTWe4LF8K1cIQUQWVHw9r77JNhSPJi/7To1fPEPl5ewWyhj9/UXjOQzz29B
 6sDPrNuHfiToknxu1nqoDqAbJ103pfCro0DbK6QYcWclgDwj8+A+EMgHJ4co8LbOJjTh
 kc5nMlmJAagLTzAVBQkRxWV6ovCI3Nd9LmZrCU+rAkPxACmZUBgovQRlTEpnFmkt1GrD
 J0tbZZZC+FidUYyDlXEVFi+5W1D7hyuJ2ezAWsxuSRj4ByMbi4FhcePkK5CfC1ZbfHpq
 lB3a+8qczmkV2pIOV1sjvRvgRT5ZmW1TuqXcWMw2puSeVSctS27MdWgxViPsTOXKtfcp
 bdXA==
X-Gm-Message-State: AOAM533rwg86c10S+Bm/ISc8wuftuafyYXrjzYvKlMcc+OmC3dn4ziZo
 sEolQ+jC9pqqrQnFRnGpMi8koYou/jTq1w==
X-Google-Smtp-Source: ABdhPJxqRgryowL5j8q9zuWztlhIAbeKhzrfRokEPL4KusBPtLaxyt/xRT0U+AId6XrvXmLko3IZSw==
X-Received: by 2002:a37:b882:: with SMTP id i124mr9941298qkf.51.1602183229093; 
 Thu, 08 Oct 2020 11:53:49 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id p69sm4285018qka.5.2020.10.08.11.53.48
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Oct 2020 11:53:48 -0700 (PDT)
Message-ID: <5F7F603B.3040102@gmail.com>
Date: Thu, 08 Oct 2020 14:53:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
 <1316B17C73CD4E78A29C851758B9424F@PC1>
In-Reply-To: <1316B17C73CD4E78A29C851758B9424F@PC1>
Subject: Re: [USRP-users] B210 USRP object creation
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============4075936021034405539=="
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
--===============4075936021034405539==
Content-Type: multipart/alternative;
 boundary="------------020205000605080704020203"

This is a multi-part message in MIME format.
--------------020205000605080704020203
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 10/08/2020 12:51 PM, David Taylor (manx.net) via USRP-users wrote:
> Thanks Marcus,
> I have had a look at the GPIO example source. It contains some useful 
> code, but I have not compiled and run it.
> Other example code in “Synchronising USRP Events using Timed Commands 
> (17 April 2020)” has been used in the OOT block.
> 1) I have configured my B210(NI) EEPROM with the correct USB vid = 
> 0x2500 and pid = 0x0814.
> The device is clearly identifiable and usable over USB3.
> 2). I have tried to identify the USRP using the following code prior 
> to making an object:-
> uhd:: device_addr_t hint;
> hint[“serial”] = “3150322”;
> uhd:: device_addrs_t dev_addrs = uhd:: device::find(hint);
> 3). Or the following to create the object directly:-
> uhd::usrp::multi_usrp:: sptr device = 
> uhd::usrp::multi_usrp::make(“vid=0x2500, pid=0x7814”);
> The codes are placed in the OOT constructor, compile and link with the 
> appropriate headers.
> In both cases the flow-graph fails to run with the usual ‘block’ 
> attribute error message. There are no USRP source or sink blocks in 
> the flow-graph that could possibly conflict.
> Regards,
> David
>
COuld you just use one of the standard test tools like 
"rx_samples_to_file"  and specify "type=b200" in the device arguments?

There should NEVER have been any reason to change the VID and PID on the 
device.



--------------020205000605080704020203
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/08/2020 12:51 PM, David Taylor
      (manx.net) via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:1316B17C73CD4E78A29C851758B9424F@PC1"
      type="cite">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      <div dir="ltr">
        <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR:
          #000000">
          <div>Thanks Marcus,</div>
          <div> </div>
          <div>I have had a look at the GPIO example source. It contains
            some useful code, but I have not compiled and run it.</div>
          <div>Other example code in “Synchronising USRP Events using
            Timed Commands (17 April 2020)” has been used in the OOT
            block.</div>
          <div> </div>
          <div>1) I have configured my B210(NI) EEPROM with the correct
            USB vid = 0x2500 and pid = 0x0814.</div>
          <div>The device is clearly identifiable and usable over USB3.</div>
          <div> </div>
          <div>2). I have tried to identify the USRP using the following
            code prior to making an object:-</div>
          <div><font color="#0000ff">uhd:: device_addr_t hint;</font></div>
          <div><font color="#0000ff">hint[“serial”] = “3150322”;</font></div>
          <div><font color="#0000ff">uhd:: device_addrs_t dev_addrs =
              uhd:: device::find(hint);</font></div>
          <div> </div>
          <div>3). Or the following to create the object directly:-</div>
          <div><font color="#0000ff">uhd::usrp::multi_usrp:: sptr device
              = uhd::usrp::multi_usrp::make(“vid=0x2500, pid=0x7814”);</font></div>
          <div> </div>
          <div>The codes are placed in the OOT constructor, compile and
            link with the appropriate headers.</div>
          <div>In both cases the flow-graph fails to run with the usual
            ‘block’ attribute error message. There are no USRP source or
            sink blocks in the flow-graph that could possibly conflict.</div>
          <div> </div>
          <div>Regards,</div>
          <div>David </div>
          <br>
        </div>
      </div>
    </blockquote>
    COuld you just use one of the standard test tools like
    "rx_samples_to_file"  and specify "type=b200" in the device
    arguments?<br>
    <br>
    There should NEVER have been any reason to change the VID and PID on
    the device.<br>
    <br>
    <br>
  </body>
</html>

--------------020205000605080704020203--


--===============4075936021034405539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4075936021034405539==--

