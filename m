Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A167B22C7B9
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 16:18:22 +0200 (CEST)
Received: from [::1] (port=44532 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyyWh-0002Zw-ES; Fri, 24 Jul 2020 10:18:19 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:34654)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyyWd-0002JE-PH
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 10:18:15 -0400
Received: by mail-qk1-f174.google.com with SMTP id x69so8741243qkb.1
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 07:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=outKWZGDKsuZurNplQLaj0dwcPhpPJffWptQbqOkyPw=;
 b=Xr+UlOssgbdeGpYznZoLhhn/Stxh8uhn+gpwZD1zGJFEOYE/C2UOnezWqfz2UPDb56
 1JW9BrysXGkQppBqNrmt8E+gJPX1cVU/jtI5nczjOHgv6ewDkbPJXmt/PstX3Db6k+un
 wZpZTnZ8tSNVubN45CE/QsM80JyrFB/jzr8AFhsTC3Hm7aPFZn4e1gG7dRA5KjWK6EbD
 buYQi6yvJdq/PbqlyzlcKTefcLMx7iuNMJ7kr/LMeYtuvYAwGarSv9dG2c/VZ7XlJv+l
 XpEUZCl7l/ZimTYlQUpruqynYjIQMWVVwE9YtBgH6ryBuo+Krij1vUj+htc/ds3aALrG
 5iIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=outKWZGDKsuZurNplQLaj0dwcPhpPJffWptQbqOkyPw=;
 b=bV2g46+iwRQCQM9624EhCKfH59PjrDvKzKCuLipHw5r3Azd3/YsWcUgFDf/Msgspdx
 6GtpOnfQ3yqCBJA4R9Ux4L3fDOH+Tvi7vH2y4rdfY+T/Exg/3O/lvFrPUzSIxUcosBtM
 Rwkq/4WcsOlaF/E8LRp0YbzgWddNEZ+dU1jSiFOqSJEPvCgrSnMK5s5t3cF5/Ijd/+KM
 LuALlqmkFojtch+hKUjZO0CcBAW/wzAEPlXzKU21MQCzhqR04sqUte2BjLLYUSzgFW3W
 uWfBezmLZ/r5rITLex8pJVKS9Z6NoUXk1EsJs+eIRx9JuJGIbdYvRBJhenvG9Dn3idQN
 nasw==
X-Gm-Message-State: AOAM533n6EiOuf0tJ8x73LBBolShjeojA1tOqQ7pbucTvY6PMrV8+Y0z
 Da7nBDpUITzmIygib0K7/0NUG3TN31I=
X-Google-Smtp-Source: ABdhPJzCvef/FUMHZRoy9WPDvqpBdxZhD1c86/xU20RnGC8J7ILPbOePFDyEsH0BaKCCfN0SMjRREw==
X-Received: by 2002:a37:910:: with SMTP id 16mr8545337qkj.466.1595600255079;
 Fri, 24 Jul 2020 07:17:35 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id n6sm4056197qkh.74.2020.07.24.07.17.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jul 2020 07:17:34 -0700 (PDT)
Message-ID: <5F1AED7D.1000606@gmail.com>
Date: Fri, 24 Jul 2020 10:17:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <10F7328F6AD1354BA6DD787687B66B9001A97AA9C3@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A97AA9C3@Maui.in.dynetics.com>
Subject: Re: [USRP-users] Getting DPDK to work
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
Content-Type: multipart/mixed; boundary="===============9042564245647512084=="
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
--===============9042564245647512084==
Content-Type: multipart/alternative;
 boundary="------------010505020101030105040108"

This is a multi-part message in MIME format.
--------------010505020101030105040108
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/24/2020 09:44 AM, Carmichael, Ryan via USRP-users wrote:
>
> I’ve got an X310, UHD 3.15.LTS (compiled with DPDK support), DPDK 
> 17.11 on Red Hat. I feel like things are 95% of the way there, but I 
> can’t get UHD to work with DPDK.
>
> Long story short, I’m getting the error “EAL: Please set IPv4 address 
> for port 0 before opening socket”. I wonder if it’s not reading my uhd 
> conf file.
>
> Before dpdk-devbind, the X310 has two IP addresses that are pingable 
> (192.168.30.2 and 40.2) from my NICs:
>
> enp13s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
>
>         inet 192.168.30.99  netmask 255.255.255.0  broadcast 
> 192.168.30.255
>
>         ether aa:bb:cc:dd:ee:01  txqueuelen 1000  (Ethernet)
>
> enp13s0f1: flags=4099<UP,BROADCAST,MULTICAST>  mtu 9001
>
>         inet 192.168.40.99  netmask 255.255.255.0  broadcast 
> 192.168.40.255
>
>         ether aa:bb:cc:dd:ee:02  txqueuelen 1000  (Ethernet)
>
> After running dpdk-devbind:
>
> Network devices using DPDK-compatible driver
>
> ============================================
>
> 0000:0d:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' 
> drv=igb_uio unused=vfio-pci,uio_pci_generic
>
> 0000:0d:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' 
> drv=igb_uio unused=vfio-pci,uio_pci_generic
>
> I have a configuration file:
>
> [use-dpdk=1]
>
> dpdk-mtu=9000
>
> dpdk-corelist=0,1
>
> dpdk-num-mbufs=4096
>
> dpdk-mbuf-cache-size=64
>
> [dpdk-mac=aa:bb:cc:dd:ee:01]
>
> dpdk-lcore = 1
>
> dpdk-ipv4 = 192.168.30.1/24
>
> dpdk-num-desc=4096
>
> [dpdk-mac=aa:bb:cd:dd:ee:02]
>
> dpdk-lcore = 0
>
> dpdk-ipv4 = 192.168.40.1/24
>
>
Check for syntax errors in the conf file?

I can't remember whether spaces are allowed around "=" in those config 
files or not.



--------------010505020101030105040108
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/24/2020 09:44 AM, Carmichael,
      Ryan via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:10F7328F6AD1354BA6DD787687B66B9001A97AA9C3@Maui.in.dynetics.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:74476602;
	mso-list-type:hybrid;
	mso-list-template-ids:-207170132 1396628910 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">I’ve got an X310, UHD 3.15.LTS (compiled
          with DPDK support), DPDK 17.11 on Red Hat. I feel like things
          are 95% of the way there, but I can’t get UHD to work with
          DPDK.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Long story short, I’m getting the error
          “EAL: Please set IPv4 address for port 0 before opening
          socket”. I wonder if it’s not reading my uhd conf file.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Before dpdk-devbind, the X310 has two IP
          addresses that are pingable (192.168.30.2 and 40.2) from my
          NICs:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">enp13s0f0:
          flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 9001<o:p></o:p></p>
        <p class="MsoNormal">        inet 192.168.30.99  netmask
          255.255.255.0  broadcast 192.168.30.255<o:p></o:p></p>
        <p class="MsoNormal">        ether aa:bb:cc:dd:ee:01  txqueuelen
          1000  (Ethernet)<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">enp13s0f1:
          flags=4099&lt;UP,BROADCAST,MULTICAST&gt;  mtu 9001<o:p></o:p></p>
        <p class="MsoNormal">        inet 192.168.40.99  netmask
          255.255.255.0  broadcast 192.168.40.255<o:p></o:p></p>
        <p class="MsoNormal">        ether aa:bb:cc:dd:ee:02  txqueuelen
          1000  (Ethernet)<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">After running dpdk-devbind:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Network devices using DPDK-compatible
          driver<o:p></o:p></p>
        <p class="MsoNormal">============================================<o:p></o:p></p>
        <p class="MsoNormal">0000:0d:00.0 '82599ES 10-Gigabit SFI/SFP+
          Network Connection 10fb' drv=igb_uio
          unused=vfio-pci,uio_pci_generic<o:p></o:p></p>
        <p class="MsoNormal">0000:0d:00.1 '82599ES 10-Gigabit SFI/SFP+
          Network Connection 10fb' drv=igb_uio
          unused=vfio-pci,uio_pci_generic<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I have a configuration file:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">[use-dpdk=1]<o:p></o:p></p>
        <p class="MsoNormal">dpdk-mtu=9000<o:p></o:p></p>
        <p class="MsoNormal">dpdk-corelist=0,1<o:p></o:p></p>
        <p class="MsoNormal">dpdk-num-mbufs=4096<o:p></o:p></p>
        <p class="MsoNormal">dpdk-mbuf-cache-size=64<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">[dpdk-mac=aa:bb:cc:dd:ee:01]<o:p></o:p></p>
        <p class="MsoNormal">dpdk-lcore = 1<o:p></o:p></p>
        <p class="MsoNormal">dpdk-ipv4 = 192.168.30.1/24<o:p></o:p></p>
        <p class="MsoNormal">dpdk-num-desc=4096<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">[dpdk-mac=aa:bb:cd:dd:ee:02]<o:p></o:p></p>
        <p class="MsoNormal">dpdk-lcore = 0<o:p></o:p></p>
        <p class="MsoNormal">dpdk-ipv4 = 192.168.40.1/24<o:p></o:p></p>
        <br>
      </div>
    </blockquote>
    Check for syntax errors in the conf file?<br>
    <br>
    I can't remember whether spaces are allowed around "=" in those
    config files or not.<br>
    <br>
    <br>
  </body>
</html>

--------------010505020101030105040108--


--===============9042564245647512084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9042564245647512084==--

