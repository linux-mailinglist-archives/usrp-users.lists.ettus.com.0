Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09463397D9
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 23:35:39 +0200 (CEST)
Received: from [::1] (port=32786 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZMWP-0008Qs-0o; Fri, 07 Jun 2019 17:35:37 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:35321)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hZMWL-0008L4-D0
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 17:35:33 -0400
Received: by mail-qt1-f177.google.com with SMTP id d23so4033863qto.2
 for <usrp-users@lists.ettus.com>; Fri, 07 Jun 2019 14:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=MjKt/aFEcSTA1GKgR4Esvg5QaK51ioqcPO5vHlc5u6w=;
 b=s191sraZUjR94zWra3+uiO4FdwzajiDCPUFZHDH0kCY1QdBr9098YSsGwVUpiMKiyn
 HLdrktSxYo5OTiOXCK6eTq0icfchlS/M6JxxlXyzKjzOfZpECNkctlqpHs4HZNAf8fCi
 Sg8Jx+AoEcvji99Ew9fiP4telVTTUNbrpwhiy06wCnPSTa9tHlAJPZ5HEQ/P3RY6eGRx
 IFRWyUhN8cjWS55PCC7A2B3HlwOZkDGUx08JnQEm+7SHsx2rFESN8TiV0FU8DNO2zONt
 EuJdLR/jb3JOco67X0Iq6gp083bbZkuEvZAkU0E13hR908B5xudBHVJL6LyHVbtVrmX2
 Z+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=MjKt/aFEcSTA1GKgR4Esvg5QaK51ioqcPO5vHlc5u6w=;
 b=XJHYxCyJNkei7mlMydrQ+ucX7jOCkkUz7CJxQSZaAXyLtWsR/0y8FlSjywhVY/Y7HD
 z/z02LHISxGR2UntVhneHIyXMEO/+47cDaUkDAn/N6riSYggDf84R6w9o3Lmug8xSHsQ
 ui0bvZnf6uImQfxwCgTbSYEIalqy0tUXPCb8qBHC6YWP0UJrXBQOio16QvI++JRK54qF
 GlJZOA+vcpAvKGYe3OdYnmjZSFNad6iBvOc38DNZGX0OtDnW57TjSs2AAl/dvIHFwUXH
 YOa85OkYme/ErGvffwcUGwlBxl0zL4AdZoyxUSiHCKSGim+EC83Jym/2Yw3oOt9XCDzn
 Gp6A==
X-Gm-Message-State: APjAAAX1mGvIRSmcuR6WOrBpXn12kFONK+jwjfSSEwjsNm0PhcQlXANr
 nb3HknU+isK/FDrqXiM72SyfH+dLeds=
X-Google-Smtp-Source: APXvYqzmnaJiWyfthE9VZ3K/tuperLHXc3tk7lfnBuHf/CJTpJcsb4CtS2W4p22qYOb89z2odstJmA==
X-Received: by 2002:ac8:2cba:: with SMTP id 55mr31466262qtw.260.1559943292796; 
 Fri, 07 Jun 2019 14:34:52 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id e66sm1740056qtb.55.2019.06.07.14.34.52
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 14:34:52 -0700 (PDT)
Message-ID: <5CFAD87B.209@gmail.com>
Date: Fri, 07 Jun 2019 17:34:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
 <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263iw1aYQYx7C6N5t0LtrL3hDUu7zp_jamkRa8aXnE6SiENQ@mail.gmail.com>
 <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAL263izHx4dMkm8Ho2Dn9MQ8Rk7qW+gT3oL3vrAGvL2WaAUBNw@mail.gmail.com>,
 <BL0PR12MB2340EF121686FC31593EC856AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB23408E4536DA1297A3D96350AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23408E4536DA1297A3D96350AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Subject: Re: [USRP-users] E320 hogging the network
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
Content-Type: multipart/mixed; boundary="===============4433142935136239546=="
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
--===============4433142935136239546==
Content-Type: multipart/alternative;
 boundary="------------070605030606000409040701"

This is a multi-part message in MIME format.
--------------070605030606000409040701
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/07/2019 03:05 PM, Jason Matusiak via USRP-users wrote:
>
> OK, this is actually an E310 problem.  The E310 always looks off 
> device first. A coworker reminded me that we spent a couple days years 
> back trying to figure out why the device was asking like it was 
> working, but we weren't seeing any results.  It was because it was 
> actually talking to an N2xx on the network even with the IP address arg.
>
>
> We never found a solution (using both the 127 and 192 address as an 
> argument still causes issues). So, it would be nice to clean this up 
> on the E310 at some point, but for now I will try not to mix the E310 
> and E320 on the same subnet.
>
>
For the case of running E310 apps *on* the E310, just use "type=e300", 
radio hardware on the E310 itself doesn't *have* an IP address, so using
   addr= will simply cause UHD to go down the wrong device path when 
you're running it ON the E31x itself.



--------------070605030606000409040701
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/07/2019 03:05 PM, Jason Matusiak
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BL0PR12MB23408E4536DA1297A3D96350AF100@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="margin-top:0;margin-bottom:0">OK, this is actually an
          E310 problem.  The E310 always looks off device first. 
          A coworker reminded me that we spent a couple days years
          back trying to figure out why the device was asking like it
          was working, but we weren't seeing any results.  It was
          because it was actually talking to an N2xx on the network even
          with the IP address arg.</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">We never found a
          solution (using both the 127 and 192 address as an argument
          still causes issues).  <span style="font-size: 12pt;">So, it
            would be nice to clean this up on the E310 at some point,
            but for now I will try
          </span><span style="font-size: 12pt;">not to mix the E310 and
            E320 on the same subnet.</span></p>
        <br>
      </div>
    </blockquote>
    For the case of running E310 apps *on* the E310, just use
    "type=e300", radio hardware on the E310 itself doesn't *have* an IP
    address, so using<br>
      addr= will simply cause UHD to go down the wrong device path when
    you're running it ON the E31x itself.<br>
    <br>
    <br>
  </body>
</html>

--------------070605030606000409040701--


--===============4433142935136239546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4433142935136239546==--

