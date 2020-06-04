Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FF11ED9F1
	for <lists+usrp-users@lfdr.de>; Thu,  4 Jun 2020 02:22:12 +0200 (CEST)
Received: from [::1] (port=34600 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgde5-0004CS-4Q; Wed, 03 Jun 2020 20:22:09 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:35440)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jgde1-00047L-GM
 for usrp-users@lists.ettus.com; Wed, 03 Jun 2020 20:22:05 -0400
Received: by mail-qt1-f181.google.com with SMTP id z1so3830539qtn.2
 for <usrp-users@lists.ettus.com>; Wed, 03 Jun 2020 17:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=T5XXtN1/J/MJwk2StXoqico+Vi4MYd/uTyIX6EHnBFc=;
 b=FYeHTmH2PXloVu6lGVIPH9sDw0zhUceMVVhKJeZ8Au/oBv3MzmwY+0EQexFbYkHUaa
 QM+iXO2kDoCLpvED6592ahEtS4TMQq33jWL1wKSGcBJoSvETqkMt8AfwNXshTHkpFsYK
 NDhv8depApXlDgRETcIBPs8ob9kSdIEBzVfvAhMIgfc0v7z6AHKrCQa85U5gum6M2zgP
 tM0pafNmkCWSAwbCdBK6dJljlKeVjkNtFk9DoeUWxH/KvyJkGhMSER91xXFfwehWynQE
 QyYb7aeNyp49T6RCiES9VF4B8HfsD0qfyl+ZE7Swr069SlUUZRYY149wrJoXjsFfWWqo
 5U0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=T5XXtN1/J/MJwk2StXoqico+Vi4MYd/uTyIX6EHnBFc=;
 b=hQ20IBWKgRyNsnoOn2RXfgRE0keYDx7dBjC48qvtL1tYZf3q8JczkttbWnWeVu2MtN
 MyjMqxvCHia+vLWRaxiQLeK438rxdX9pqOEK7SxOCXx3veV5QpE4/LKBbXHqOT9tZ+J1
 oGAM2JzjMDlBZ4Pv1SLR145pHhfUxnQa0S+WiXuf4kzOZXwemQzfNAXMKLd07AP+4Q7Q
 Z7zdS5Gq12yQlC0+9UKheDkodN1WmpwoXtHwMI4QJlH6ODmq+UcWmZEwwWf5qsDz3tGY
 FYtSBXZKW08kXUogziXyWoqkUT0YdmDhupOaxe+iVl9qnJmJl0PN8WyjsFCWT8Pg+FRd
 hSog==
X-Gm-Message-State: AOAM532K8uE4GFYjg2iufTvLNzDkTq9x4E508Yzh+Xb2tlcF0Wwx2rOl
 mF+C3kAiQ/96fSTAkR9w5/yZv02y+ac=
X-Google-Smtp-Source: ABdhPJxSQP9xzuyHZ7xtpuvoGNufdk+Yu0qISSxqZN1MhcPkmbFMbQFePujXRtmKSiVbkHcFR1fCYw==
X-Received: by 2002:ac8:23e3:: with SMTP id r32mr2060515qtr.268.1591230079509; 
 Wed, 03 Jun 2020 17:21:19 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id g9sm3222164qtq.66.2020.06.03.17.21.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jun 2020 17:21:19 -0700 (PDT)
Message-ID: <5ED83E7D.6030303@gmail.com>
Date: Wed, 03 Jun 2020 20:21:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <126cd20d82ba4cb6ae0eecdb95637f7f@gtri.gatech.edu>
In-Reply-To: <126cd20d82ba4cb6ae0eecdb95637f7f@gtri.gatech.edu>
Subject: Re: [USRP-users] uhd_image_loader bricked my x310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============0902300729612937993=="
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
--===============0902300729612937993==
Content-Type: multipart/alternative;
 boundary="------------000700050305000302010201"

This is a multi-part message in MIME format.
--------------000700050305000302010201
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 06/03/2020 08:16 PM, Hodges, Jeff via USRP-users wrote:
>
> The uhd_image_loader seems to have bricked my x310!
>
> Prior to running it, the device was connected fine but after running 
> the script, it loaded to 100% and said to recycle power. After 
> recycling power, the USRP will no longer connect to my computer. The 
> LINK light does not come on and the Ethernet says “unplugged”.
>
> I’m using UHD_3.15.0.0-16-ga3ece4f2 on Ubuntu 18.04 and connected to 
> SPF+ Port 0. Here is the terminal history:
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ 
> uhd_usrp_probe --args addr=192.168.10.2*
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.0-16-ga3ece4f2
>
> [INFO] [X300] X300 initialization sequence...
>
> Error: RuntimeError: Expected FPGA compatibility number 36, but got 20:
>
> The FPGA image on your device is not compatible with this host code build.
>
> Download the appropriate FPGA images for this version of UHD.
>
> Please run:
>
> "/usr/local/lib/uhd/utils/uhd_images_downloader.py"
>
> Then burn a new image to the on-board flash storage of your
>
> USRP X3xx device using the image loader utility. Use this command:
>
> "/usr/local/bin/uhd_image_loader" --args="type=x300,addr=192.168.10.2"
>
> For more information, refer to the UHD manual:
>
> http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ sudo 
> uhd_images_downloader*
>
> [sudo] password for nvd:
>
> [INFO] Using base URL: https://files.ettus.com/binaries/cache/
>
> [INFO] Images destination: /usr/local/share/uhd/images
>
> [INFO] Target x3xx_x310_fpga_default is up to date.
>
> [INFO] Target x3xx_x300_fpga_default is up to date.
>
> [INFO] Target e3xx_e310_sg1_fpga_default is up to date.
>
> [INFO] Target e3xx_e310_sg3_fpga_default is up to date.
>
> [INFO] Target e3xx_e320_fpga_default is up to date.
>
> [INFO] Target n3xx_n310_fpga_default is up to date.
>
> [INFO] Target n3xx_n300_fpga_default is up to date.
>
> [INFO] Target n3xx_n320_fpga_default is up to date.
>
> [INFO] Target b2xx_b200_fpga_default is up to date.
>
> [INFO] Target b2xx_b200mini_fpga_default is up to date.
>
> [INFO] Target b2xx_b210_fpga_default is up to date.
>
> [INFO] Target b2xx_b205mini_fpga_default is up to date.
>
> [INFO] Target b2xx_common_fw_default is up to date.
>
> [INFO] Target usrp2_usrp2_fw_default is up to date.
>
> [INFO] Target usrp2_usrp2_fpga_default is up to date.
>
> [INFO] Target usrp2_n200_fpga_default is up to date.
>
> [INFO] Target usrp2_n200_fw_default is up to date.
>
> [INFO] Target usrp2_n210_fpga_default is up to date.
>
> [INFO] Target usrp2_n210_fw_default is up to date.
>
> [INFO] Target n230_n230_fpga_default is up to date.
>
> [INFO] Target usrp1_usrp1_fpga_default is up to date.
>
> [INFO] Target usrp1_b100_fpga_default is up to date.
>
> [INFO] Target usrp1_b100_fw_default is up to date.
>
> [INFO] Target octoclock_octoclock_fw_default is up to date.
>
> [INFO] Target usb_common_windrv_default is up to date.
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ 
> "/usr/local/bin/uhd_image_loader" --args="type=x300,addr=192.168.10.2"*
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.0-16-ga3ece4f2
>
> Unit: USRP X310 (312CEC4, 192.168.10.2)
>
> FPGA Image: /usr/local/share/uhd/images/usrp_x310_fpga_HG.bit
>
> -- Initializing FPGA loading...successful.
>
> -- Loading HG FPGA image: 100% (121/121 sectors)
>
> -- Finalizing image load...successful.
>
> Power-cycle the USRP X310 to use the new image.
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ 
> uhd_find_devices*
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.0-16-ga3ece4f2
>
> No UHD Devices Found
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ 
> uhd_usrp_probe --args addr=192.168.10.2*
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.0-16-ga3ece4f2
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
>     addr: 192.168.10.2
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ ping 
> 192.168.10.2*
>
> PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.
>
> ^C
>
> --- 192.168.10.2 ping statistics ---
>
> 49 packets transmitted, 0 received, 100% packet loss, time 49946ms
>
> nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ ifconfig
>
> enp0s3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>
>         inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
>
> …
>
> Jeff
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
How long did you wait after power-cycling?  It usually takes 
10s-of-seconds for X3xx to "wake up" after a power-cycle.


--------------000700050305000302010201
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/03/2020 08:16 PM, Hodges, Jeff
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:126cd20d82ba4cb6ae0eecdb95637f7f@gtri.gatech.edu"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">The uhd_image_loader seems to have bricked
          my x310!<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Prior to running it, the device was
          connected fine but after running the script, it loaded to 100%
          and said to recycle power. After recycling power, the USRP
          will no longer connect to my computer. The LINK light does not
          come on and the Ethernet says “unplugged”.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I’m using UHD_3.15.0.0-16-ga3ece4f2 on
          Ubuntu 18.04 and connected to SPF+ Port 0. Here is the
          terminal history:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$
            uhd_usrp_probe --args addr=192.168.10.2<o:p></o:p></b></p>
        <p class="MsoNormal">[INFO] [UHD] linux; GNU C++ version 7.5.0;
          Boost_106501; UHD_3.15.0.0-16-ga3ece4f2<o:p></o:p></p>
        <p class="MsoNormal">[INFO] [X300] X300 initialization
          sequence...<o:p></o:p></p>
        <p class="MsoNormal">Error: RuntimeError: Expected FPGA
          compatibility number 36, but got 20:<o:p></o:p></p>
        <p class="MsoNormal">The FPGA image on your device is not
          compatible with this host code build.<o:p></o:p></p>
        <p class="MsoNormal">Download the appropriate FPGA images for
          this version of UHD.<o:p></o:p></p>
        <p class="MsoNormal">Please run:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">"/usr/local/lib/uhd/utils/uhd_images_downloader.py"<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Then burn a new image to the on-board flash
          storage of your<o:p></o:p></p>
        <p class="MsoNormal">USRP X3xx device using the image loader
          utility. Use this command:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">"/usr/local/bin/uhd_image_loader"
          --args="type=x300,addr=192.168.10.2"<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">For more information, refer to the UHD
          manual:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><a class="moz-txt-link-freetext" href="http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash">http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash</a><o:p></o:p></p>
        <p class="MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$
            sudo uhd_images_downloader<o:p></o:p></b></p>
        <p class="MsoNormal">[sudo] password for nvd: <o:p></o:p></p>
        <p class="MsoNormal">[INFO] Using base URL:
          <a class="moz-txt-link-freetext" href="https://files.ettus.com/binaries/cache/">https://files.ettus.com/binaries/cache/</a><o:p></o:p></p>
        <p class="MsoNormal">[INFO] Images destination:
          /usr/local/share/uhd/images<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target x3xx_x310_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target x3xx_x300_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target e3xx_e310_sg1_fpga_default is
          up to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target e3xx_e310_sg3_fpga_default is
          up to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target e3xx_e320_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target n3xx_n310_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target n3xx_n300_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target n3xx_n320_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target b2xx_b200_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target b2xx_b200mini_fpga_default is
          up to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target b2xx_b210_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target b2xx_b205mini_fpga_default is
          up to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target b2xx_common_fw_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp2_usrp2_fw_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp2_usrp2_fpga_default is
          up to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp2_n200_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp2_n200_fw_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp2_n210_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp2_n210_fw_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target n230_n230_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp1_usrp1_fpga_default is
          up to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp1_b100_fpga_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usrp1_b100_fw_default is up
          to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target
          octoclock_octoclock_fw_default is up to date.<o:p></o:p></p>
        <p class="MsoNormal">[INFO] Target usb_common_windrv_default is
          up to date.<o:p></o:p></p>
        <p class="MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$
            "/usr/local/bin/uhd_image_loader"
            --args="type=x300,addr=192.168.10.2"<o:p></o:p></b></p>
        <p class="MsoNormal">[INFO] [UHD] linux; GNU C++ version 7.5.0;
          Boost_106501; UHD_3.15.0.0-16-ga3ece4f2<o:p></o:p></p>
        <p class="MsoNormal">Unit: USRP X310 (312CEC4, 192.168.10.2)<o:p></o:p></p>
        <p class="MsoNormal">FPGA Image:
          /usr/local/share/uhd/images/usrp_x310_fpga_HG.bit<o:p></o:p></p>
        <p class="MsoNormal">-- Initializing FPGA loading...successful.<o:p></o:p></p>
        <p class="MsoNormal">-- Loading HG FPGA image: 100% (121/121
          sectors)<o:p></o:p></p>
        <p class="MsoNormal">-- Finalizing image load...successful.<o:p></o:p></p>
        <p class="MsoNormal">Power-cycle the USRP X310 to use the new
          image.<o:p></o:p></p>
        <p class="MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$
            uhd_find_devices<o:p></o:p></b></p>
        <p class="MsoNormal">[INFO] [UHD] linux; GNU C++ version 7.5.0;
          Boost_106501; UHD_3.15.0.0-16-ga3ece4f2<o:p></o:p></p>
        <p class="MsoNormal">No UHD Devices Found<o:p></o:p></p>
        <p class="MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$
            uhd_usrp_probe --args addr=192.168.10.2<o:p></o:p></b></p>
        <p class="MsoNormal">[INFO] [UHD] linux; GNU C++ version 7.5.0;
          Boost_106501; UHD_3.15.0.0-16-ga3ece4f2<o:p></o:p></p>
        <p class="MsoNormal">Error: LookupError: KeyError: No devices
          found for -----&gt;<o:p></o:p></p>
        <p class="MsoNormal">Device Address:<o:p></o:p></p>
        <p class="MsoNormal">    addr: 192.168.10.2<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$
            ping 192.168.10.2<o:p></o:p></b></p>
        <p class="MsoNormal">PING 192.168.10.2 (192.168.10.2) 56(84)
          bytes of data.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">^C<o:p></o:p></p>
        <p class="MsoNormal">--- 192.168.10.2 ping statistics ---<o:p></o:p></p>
        <p class="MsoNormal">49 packets transmitted, 0 received, 100%
          packet loss, time 49946ms<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$
          ifconfig<o:p></o:p></p>
        <p class="MsoNormal">enp0s3:
          flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500<o:p></o:p></p>
        <p class="MsoNormal">        inet 10.0.2.15  netmask
          255.255.255.0  broadcast 10.0.2.255<o:p></o:p></p>
        <p class="MsoNormal">…<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Jeff<o:p></o:p></p>
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
    How long did you wait after power-cycling?  It usually takes
    10s-of-seconds for X3xx to "wake up" after a power-cycle.<br>
    <br>
  </body>
</html>

--------------000700050305000302010201--


--===============0902300729612937993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0902300729612937993==--

