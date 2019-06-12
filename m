Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F1430C8
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 22:05:26 +0200 (CEST)
Received: from [::1] (port=47758 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hb9Uq-000271-VM; Wed, 12 Jun 2019 16:05:24 -0400
Received: from mail-yw1-f52.google.com ([209.85.161.52]:33698)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hb9Um-0001yp-UT
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 16:05:20 -0400
Received: by mail-yw1-f52.google.com with SMTP id n21so1259312ywh.0
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 13:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=AuQTQGkRD//FhfKsQ3mg3xARHLNvKCBryW6RKeFArB4=;
 b=esOAoWSnA5f0qL9PPvUAlb13VtQmLnK4I3gGd1X6yhmLwfMVNNBqQSe4px5qz+unfI
 zCL2CuG5Cw1ds50I+IU6TFF8ifLFpirUFYGzDTnWOkQ/reRAr/Y6CPpu6WQ4dq8rNgCC
 /B7Q8X3SvIHj/O/HN0+NTItweeoAYoG6Xtf0Pol1rUQ47Xuih/caHXJbo3Uomzxcxoda
 dRd9xe2gnkxJ1U4UPaKyJD4suuAof/SvE/x673dn8wHP/xKBAvk+gAugU4ROfzV4UOKZ
 gLMl0Z04W/uDnXXIi5zZ1XfiwK5rpawpJCOLSfV1klWpYgGLn0uvnV0WZoNUurH4TLZY
 mPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=AuQTQGkRD//FhfKsQ3mg3xARHLNvKCBryW6RKeFArB4=;
 b=GMjj34ZcbUwHHZVzs1ngeAxvgiwtbvopm2SClwMMbG4SQTDW/7Nu7KvFbnGGVGgFqz
 XuoYCfxqQBWL/mYGfUesEobGt9bMMS72BywltNJpSHC/dXl4i0rJMNxhwwtb4Igeqkx5
 RZosDWV1Q95xKG5y4NlKqBStOHD1CDxcYOiHAOvReYUONBW4SpRuz3r/21aL3UDz878k
 IV+JL0pDvIEZhs6CIA+Y3soPnPeAExlKpv/TxTXf39WN0GTpV5VIpv8MX182fRRxrItX
 Qo7ZxMUlbJ1+y0TAwPBTCz5+z3rv0Pva39NRXzVVTkeYahRqkzYV0KhkOYRc2//Wcklx
 sMWQ==
X-Gm-Message-State: APjAAAV7050gSjQJmRNPShlCRHDyNxuVRBr2OXQp18W2KMLpYihfTvcC
 F6Qur6fLkNe1bWPvnoOchUVSUsCLsoI=
X-Google-Smtp-Source: APXvYqznxFZ7/pEeuSFoPkDp2mWO57W0MH6bvx99EgcieEvd3gFkF/L5L1IK5RSaahGnl3RMlQeztQ==
X-Received: by 2002:a0d:edc1:: with SMTP id
 w184mr31819915ywe.174.1560369879734; 
 Wed, 12 Jun 2019 13:04:39 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id v23sm176761ywv.79.2019.06.12.13.04.39
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 13:04:39 -0700 (PDT)
Message-ID: <5D015AD6.90609@gmail.com>
Date: Wed, 12 Jun 2019 16:04:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BL0PR12MB2340075EA81B6C386742FD8CAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB2340F9194E8CB37090D872ABAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340F9194E8CB37090D872ABAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com>
Subject: Re: [USRP-users] UHD not seeing E320
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
Content-Type: multipart/mixed; boundary="===============2398675455985806036=="
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
--===============2398675455985806036==
Content-Type: multipart/alternative;
 boundary="------------060104060506070902020707"

This is a multi-part message in MIME format.
--------------060104060506070902020707
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2019 03:56 PM, Jason Matusiak via USRP-users wrote:
>
> Problem solved.  It was a firewall issue.  Is there a list of what 
> ports I should make sure are opened to UDP?  The ones I caught were 
> 49152 and 49154.
>
>
> Are there any others I need to know?
>
And from x300_fw_common.h:

define X300_FW_COMMS_UDP_PORT 49152

#define X300_VITA_UDP_PORT 49153
#define X300_GPSDO_UDP_PORT 49156
#define X300_FPGA_PROG_UDP_PORT 49157
#define X300_MTU_DETECT_UDP_PORT 49158
#define X300_FPGA_READ_UDP_PORT 49159


>
> ------------------------------------------------------------------------
> *From:* Jason Matusiak
> *Sent:* Wednesday, June 12, 2019 10:32 AM
> *To:* Ettus Mail List
> *Subject:* UHD not seeing E320
>
> I have a new issue with my E320.  I loaded up an E320 with an SD card 
> image that I have used on a different working E320.
>
>
> On my personal machine, I am using a 1G image that seems to work fine 
> and uhd_find_device (and probe) seems to be working fine.  I change 
> the IP and load up an XG image onto it. I move it physically to a 
> server that uses 10G.  The particular ethernet port works fine with my 
> X310 I had had hooked up to it.  I disconnected my X310 and plugged in 
> my E320.  I can ping and SSH the device fine.  When I run a probe or a 
> a find devices, I don't find a UHD device.  I tried with different 
> versions of UHD and they all seem to have the same problem.  When I am 
> ssh'ed onto the device, probes and finds work fine internally.
>
>
> Is there something I am missing here?  The port worked with an X310 
> completely, and can talk to an E320, but that is all; I am very perplexed.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------060104060506070902020707
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/12/2019 03:56 PM, Jason Matusiak
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BL0PR12MB2340F9194E8CB37090D872ABAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="margin-top:0;margin-bottom:0">Problem solved.  It was
          a firewall issue.  Is there a list of what ports I should make
          sure are opened to UDP?  The ones I caught were <span>49152
            and <span>49154.</span></span></p>
        <p style="margin-top:0;margin-bottom:0"><span><span><br>
            </span></span></p>
        <p style="margin-top:0;margin-bottom:0"><span><span>Are there
              any others I need to know?</span></span></p>
      </div>
    </blockquote>
    And from x300_fw_common.h:<br>
    <br>
    define X300_FW_COMMS_UDP_PORT 49152<br>
    <br>
    #define X300_VITA_UDP_PORT 49153<br>
    #define X300_GPSDO_UDP_PORT 49156<br>
    #define X300_FPGA_PROG_UDP_PORT 49157<br>
    #define X300_MTU_DETECT_UDP_PORT 49158<br>
    #define X300_FPGA_READ_UDP_PORT 49159<br>
    <br>
    <br>
    <blockquote
cite="mid:BL0PR12MB2340F9194E8CB37090D872ABAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <br>
        <div style="color: rgb(0, 0, 0);">
          <hr style="display:inline-block;width:98%" tabindex="-1">
          <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
              color="#000000" face="Calibri, sans-serif"><b>From:</b>
              Jason Matusiak<br>
              <b>Sent:</b> Wednesday, June 12, 2019 10:32 AM<br>
              <b>To:</b> Ettus Mail List<br>
              <b>Subject:</b> UHD not seeing E320</font>
            <div> </div>
          </div>
          <div dir="ltr">
            <div id="x_divtagdefaultwrapper" dir="ltr"
              style="font-size:12pt; color:#000000;
              font-family:Calibri,Helvetica,sans-serif">
              <p style="margin-top:0; margin-bottom:0">I have a new
                issue with my E320.  I loaded up an E320 with an SD card
                image that I have used on a different working E320.</p>
              <p style="margin-top:0; margin-bottom:0"><br>
              </p>
              <p style="margin-top:0; margin-bottom:0">On my personal
                machine, I am using a 1G image that seems to work fine
                and uhd_find_device (and probe) seems to be working
                fine.  I change the IP and load up an XG image onto it. 
                I move it physically to a server that uses 10G.  The
                particular ethernet port works fine with my X310 I had
                had hooked up to it.  I disconnected my X310 and plugged
                in my E320.  I can ping and SSH the device fine.  When I
                run a probe or a a find devices, I don't find a UHD
                device.  I tried with different versions of UHD and they
                all seem to have the same problem.  When I am ssh'ed
                onto the device, probes and finds work fine internally.</p>
              <p style="margin-top:0; margin-bottom:0"><br>
              </p>
              <p style="margin-top:0; margin-bottom:0">Is there
                something I am missing here?  The port worked with an
                X310 completely, and can talk to an E320, but that is
                all; I am very perplexed.</p>
            </div>
          </div>
        </div>
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

--------------060104060506070902020707--


--===============2398675455985806036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2398675455985806036==--

