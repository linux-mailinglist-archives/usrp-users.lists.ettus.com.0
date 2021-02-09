Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C1A3158BF
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 22:42:37 +0100 (CET)
Received: from [::1] (port=38858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9amJ-0006mt-En; Tue, 09 Feb 2021 16:42:35 -0500
Received: from mail-qv1-f41.google.com ([209.85.219.41]:43900)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l9amG-0006gD-5Z
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 16:42:32 -0500
Received: by mail-qv1-f41.google.com with SMTP id j13so9426706qvu.10
 for <usrp-users@lists.ettus.com>; Tue, 09 Feb 2021 13:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=xwkEAabrOcBT4KtLuQ18lMAyjjgLkXsDBGD/sP9q7LM=;
 b=oeQJi8Kc/xTsNfSEwTHhMAl9diexYKaFoSMgdAuTIQlGZXZFbOp5Cwk9MBQ54iE/mm
 OuL8DIHmKrqod5JiU3qv3IIEcyV2ezssP+x1kKqTqf2/vsKVdHl01QqcZSWnnuXIpNTG
 /LGSeoMHGHaNzmHDdc4D3EALbRqAHw9Ax5xsYm5MMbrgmOS3EulzY9Ox0O7V9KBgTwUI
 1fGH1YqwJfmIBPwAmri+KsbTZLdY/fuYusjiKvO56f2uJ/H+cgpSWf51A7aU7p7GZ88F
 KvSSTeZkuFwMpo87+Ln6E+zLxvJx8mlaIL42Tz6ey3oJ3nXY7ycrSPsQ+2RxsI+z0eiQ
 UCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=xwkEAabrOcBT4KtLuQ18lMAyjjgLkXsDBGD/sP9q7LM=;
 b=PYOsflT2MMVavawTwIdfCAqobqIK1FoyVj9x1BdOqifVPMxZhefcTD2xXbCckAEyBS
 cPQtO6y/A5Dr08s/0K3C6TJyIUSOtt6R2dcsNT5nRoSOWbw7j3yUGnPKDysheck4NhaS
 uS5KoMRZb0bd0PZJT9gIaSWDIAjnr5ujr9jqrdk6CikOH6xVVV/esQ22M0sfeJw+VrQX
 e36Vp+YH/+yZ10EYzHtHsknfU0Ony+gdsSf27xUjjnzMUs+AIEF/+MQwsPurG5niimbG
 8syHVYTNJ27sA6bACJPTPZgEQqdwe0wEJJvSl0ES/NU/NZ7O3avdRt0YMTkOBHvE1t1J
 ClSw==
X-Gm-Message-State: AOAM531sHGimxSHTBQkqVNHUSHz3eYXlMzJUHoz6QMUjEa0HGN8uxm2D
 WYVU8owXXxaiSrMIXZdwrg8O7KlN0lE=
X-Google-Smtp-Source: ABdhPJwcfg5JybYZxRACHnwb7wqSwvSBVily+XDCIlcZ/7s9uAZh8A6wJJiWj0hC5ahMn/6JBUAAuA==
X-Received: by 2002:a0c:e38c:: with SMTP id a12mr6000qvl.38.1612906911214;
 Tue, 09 Feb 2021 13:41:51 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id f8sm76796qth.6.2021.02.09.13.41.50
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 13:41:51 -0800 (PST)
Message-ID: <6023019E.1060308@gmail.com>
Date: Tue, 09 Feb 2021 16:41:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <6df26e992abae0bab093accea1d0baf2eb0ece70@webmail>
In-Reply-To: <6df26e992abae0bab093accea1d0baf2eb0ece70@webmail>
Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
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
Content-Type: multipart/mixed; boundary="===============0368734459029660212=="
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
--===============0368734459029660212==
Content-Type: multipart/alternative;
 boundary="------------000907070708080300080808"

This is a multi-part message in MIME format.
--------------000907070708080300080808
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2021 04:35 PM, Dennis Trask via USRP-users wrote:
> I have re-imaged the SD card for my E310 with the v4.0.0.0 image. I 
> cannot figure out how to set a static IP address on eth0 at boot-up. I 
> created an /etc/network/interfaces file that looks like this:
>
> auto eth0
> iface eth0 inet static
> address 192.168.200.2
> netmask 255.255.255.0
>
> I can run the command "ifup eth0" and bring up the interface with the 
> desired configuration, but it does not initialize when I reboot.
>
> The SD image I am using was obtained with the command: 
> uhd_images_downloader -t e310 -t sg3
>
> I built the uhd_images_downloder from source, and it's version 
> is 4.0.0.HEAD-0-g90ce6062.
>
> Dennis
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
It almost certainly is running systemd/networkd

So look under /etc/systemd/networkd

In Linux, there have historically been many different ways to configure 
network devices, and even under systemd, there are a couple of
   different schemes "out there".  I believe that in a UHD 4 system 
image on E310, it is based on Networkd.



--------------000907070708080300080808
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/09/2021 04:35 PM, Dennis Trask
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:6df26e992abae0bab093accea1d0baf2eb0ece70@webmail"
      type="cite">I have re-imaged the SD card for my E310 with the
      v4.0.0.0 image. I cannot figure out how to set a static IP address
      on eth0 at boot-up. I created an /etc/network/interfaces file that
      looks like this:
      <div><br>
      </div>
      <div>
        <div>auto eth0</div>
        <div>iface eth0 inet static</div>
        <div>address 192.168.200.2</div>
        <div>netmask 255.255.255.0</div>
      </div>
      <div><br>
      </div>
      <div>I can run the command "ifup eth0" and bring up the interface
        with the desired configuration, but it does not initialize when
        I reboot.</div>
      <div><br>
      </div>
      <div>The SD image I am using was obtained with the command:
        uhd_images_downloader -t e310 -t sg3</div>
      <div><br>
      </div>
      <div>I built the uhd_images_downloder from source, and it's
        version is 4.0.0.HEAD-0-g90ce6062.</div>
      <div><br>
      </div>
      <div>Dennis</div>
      <div><br>
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
    It almost certainly is running systemd/networkd<br>
    <br>
    So look under /etc/systemd/networkd<br>
    <br>
    In Linux, there have historically been many different ways to
    configure network devices, and even under systemd, there are a
    couple of<br>
      different schemes "out there".  I believe that in a UHD 4 system
    image on E310, it is based on Networkd.<br>
    <br>
    <br>
  </body>
</html>

--------------000907070708080300080808--


--===============0368734459029660212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0368734459029660212==--

