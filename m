Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6599D430BB
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 22:03:26 +0200 (CEST)
Received: from [::1] (port=46328 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hb9Sv-0001oM-0a; Wed, 12 Jun 2019 16:03:25 -0400
Received: from mail-yw1-f50.google.com ([209.85.161.50]:37061)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hb9Sr-0001fd-Ep
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 16:03:21 -0400
Received: by mail-yw1-f50.google.com with SMTP id 186so7332372ywo.4
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 13:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=C38hgEmIrigLaZ/udVzBbeqYjvLgrmK680ehn8KpMWI=;
 b=Km0QkepjcMx1LoIVRED9IgND+W9/yjSkpnPpvcE5IQlb60W/Swy5cNDiX0G7PNrtlY
 wwQuTJfUipM/WrlgUsw/kpcdmPeNeONDf+lqiiEuGfK4ahXDny6aXoApGOmpu+YPmY5H
 AQ1D0Ry2gDEUVWkpJLfqKZdGvWhU3D0qyvS+qh0veWK/7SV67oALWgcUIjhfMLSsBt3+
 ltMGpWo9zj7XXYWiRDnAFwruDdkMrrN8lqhMQlAO5ZKZPMq55Hm7DS5e6QN0KZZ00LET
 x4gEEA0tu/5V+UEjrHy5LEBGEDXhcP0Po305BehALK6aNlI8UEQzycX43VgeN/Fq8md4
 +oTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=C38hgEmIrigLaZ/udVzBbeqYjvLgrmK680ehn8KpMWI=;
 b=bwpc48rnxfbSqVXLJ2zWzrJPXmrQhN062acLNyfJZsoSTZ5ObUT0Nq9JLGpmHX+DF4
 VhuxeUEcPow5EUHKK2YVIEFiSvFe24tmdcIXbDCOhEzhrHjLaxzNlOzwDRT7QtxqBQE0
 TbWKOKObvJEOB8cjKElfIw7pPILKUMcD07idmTf+zeacQ8NP4jAnzg9BD1hA+iw57spy
 NsHLge/yZIC/zHjoHfNcebtvrp5S6kuLZQVcEdJhTMnjvep/WPxx1SwdAsQXKE78f+DK
 LIA820GXHh1eCy8zPqIM1qAcrjWTuRdPWxC2evi5flf8+tfho7myodal11SEwoxLhr6M
 sNvQ==
X-Gm-Message-State: APjAAAUv9RWQBYZQaDXlg6+VWXG0vsMkUUmg8mwxULKafVKbLqMKFzXy
 3mK8Lhm8xxDgz6svYQ2wvNNfxf0sKrA=
X-Google-Smtp-Source: APXvYqy+LtvF1NuAKtZWUg+OtLTElUa078ko5tQy27ecS9xeWk1OIONL23c0V0Lq2kQBeFy3kNaXWQ==
X-Received: by 2002:a81:364b:: with SMTP id d72mr35253988ywa.143.1560369760601; 
 Wed, 12 Jun 2019 13:02:40 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id x85sm524636ywx.63.2019.06.12.13.02.39
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 13:02:39 -0700 (PDT)
Message-ID: <5D015A5F.20803@gmail.com>
Date: Wed, 12 Jun 2019 16:02:39 -0400
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
Content-Type: multipart/mixed; boundary="===============8361909300712526417=="
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
--===============8361909300712526417==
Content-Type: multipart/alternative;
 boundary="------------010103040803030302060500"

This is a multi-part message in MIME format.
--------------010103040803030302060500
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
 From fw_common.h

#define USRP2_UDP_CTRL_PORT 49152
//#define USRP2_UDP_UPDATE_PORT 49154
#define USRP2_UDP_RX_DSP0_PORT 49156
#define USRP2_UDP_TX_DSP0_PORT 49157
#define USRP2_UDP_RX_DSP1_PORT 49158
#define USRP2_UDP_FIFO_CRTL_PORT 49159
#define USRP2_UDP_UART_BASE_PORT 49170
#define USRP2_UDP_UART_GPS_PORT 49172



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


--------------010103040803030302060500
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
    From fw_common.h<br>
    <br>
    #define USRP2_UDP_CTRL_PORT 49152<br>
    //#define USRP2_UDP_UPDATE_PORT 49154<br>
    #define USRP2_UDP_RX_DSP0_PORT 49156<br>
    #define USRP2_UDP_TX_DSP0_PORT 49157<br>
    #define USRP2_UDP_RX_DSP1_PORT 49158<br>
    #define USRP2_UDP_FIFO_CRTL_PORT 49159<br>
    #define USRP2_UDP_UART_BASE_PORT 49170<br>
    #define USRP2_UDP_UART_GPS_PORT 49172<br>
    <br>
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

--------------010103040803030302060500--


--===============8361909300712526417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8361909300712526417==--

