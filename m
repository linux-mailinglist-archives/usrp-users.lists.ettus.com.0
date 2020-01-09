Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF20A1355DF
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 10:35:12 +0100 (CET)
Received: from [::1] (port=52118 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipUDa-0008GM-TP; Thu, 09 Jan 2020 04:35:06 -0500
Received: from smtp.eurecom.fr ([193.55.113.210]:40842)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <florian.kaltenberger@eurecom.fr>) id 1ipUDW-0008Cb-FN
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 04:35:02 -0500
X-IronPort-AV: E=Sophos;i="5.69,413,1571695200"; 
 d="vcf'?scan'208,217";a="11729520"
Received: from monza.eurecom.fr ([192.168.106.15])
 by drago1i.eurecom.fr with ESMTP; 09 Jan 2020 10:34:20 +0100
Received: from [192.168.200.31] (unknown [192.168.200.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by monza.eurecom.fr (Postfix) with ESMTPSA id C38C13341
 for <usrp-users@lists.ettus.com>; Thu,  9 Jan 2020 10:34:20 +0100 (CET)
To: usrp-users@lists.ettus.com
References: <BYAPR04MB4456DA8FD19AC8C087B4D6FCF83E0@BYAPR04MB4456.namprd04.prod.outlook.com>
Message-ID: <41e927ca-0ef3-ab7a-63ea-489db758688e@eurecom.fr>
Date: Thu, 9 Jan 2020 10:34:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4456DA8FD19AC8C087B4D6FCF83E0@BYAPR04MB4456.namprd04.prod.outlook.com>
Content-Type: multipart/mixed; boundary="------------DEF3213986ACA042918BE9E0"
Content-Language: en-US
Subject: Re: [USRP-users] DPDK runtime error
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
From: Florian Kaltenberger via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Florian Kaltenberger <florian.kaltenberger@eurecom.fr>
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
--------------DEF3213986ACA042918BE9E0
Content-Type: multipart/alternative;
 boundary="------------DCD60451D9A29EDA52C39B74"


--------------DCD60451D9A29EDA52C39B74
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Aaron,

thanks for spotting this! Indeed that was a mistake. I also had to 
adjust the dpdk-num-mbufs=4059 and dpdk-mbuf-cache-size=315 like in the 
example configuration file for uhd 3.15.0 and then it worked! Yay!

Now lets see if OpenAirInterface runs more stable with this! :)

Florian.

On 1/8/2020 17:31, Aaron Rossetto via USRP-users wrote:

> Hello Florian,
>
> I believe in UHD 3.15, the keys in the uhd.conf file use dashes (-), not underscores between words, e.g.:
>
> [dpdk-mac=00:11:22:33:44:55]
> dpdk-io-cpu = 1
> dpdk-ipv4 = 192.168.10.1/24
>
> Hope that helps,
> Aaron
>
>
>
> From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Florian Kaltenberger via USRP-users
> Sent: Wednesday, January 8, 2020 10:10 AM
> Subject: [EXTERNAL] Re: [USRP-users] DPDK runtime error
>
> Hi,
> we now installed DPDK 17.11 but I still have exactly the same problem.
> I have a feeling the problem is that I am not addressing the device correctly. Here is what I did:
> The USRP is connected to ethernet interfaces "p1p2" (mac_addr 64:9d:99:b1:1e:8d) and "p1p4" (mac_addr 64:9d:99:b1:1e:8f) which are originally configured with IP addresses 192.168.10.1 and inet_addr 192.168.20.1. This configuration works fine without dpdk.
> Then I deactivate these two interfaces using "ifconfig p1p2 down" "ifconfig p1p4 down"and do "dpdk-devbind --bind=vfio-pci 01:00.1" and "dpdk-devbind --bind=vfio-pci 01:00.3". The status of "dpdk-devbind -s" is below.
> In the file /etc/uhd/uhd.conf I specify
> [dpdk_mac=64:9d:99:b1:1e:8d]
> dpdk_io_cpu = 1
> dpdk_ipv4 = 192.168.10.1/24
>
> [dpdk_mac=64:9d:99:b1:1e:8f]
> dpdk_io_cpu = 2
> dpdk_ipv4 = 192.168.20.1/24
> Is this the correct way of specifying it? What surprises me is that DPDK requires to address the device by its PCI address while UHD still requires to set the IP addresses.
> Florian.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
-- 
Follow us on Google+ <https://plus.google.com/+OpenairinterfaceOrg>, 
LinkedIn <https://www.linkedin.com/company/openairinterface>, or Twitter 
<https://twitter.com/osalliance5g>!

--------------DCD60451D9A29EDA52C39B74
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Aaron,</p>
    <p>thanks for spotting this! Indeed that was a mistake. I also had
      to adjust the dpdk-num-mbufs=4059 and dpdk-mbuf-cache-size=315
      like in the example configuration file for uhd 3.15.0 and then it
      worked! Yay!</p>
    <p>Now lets see if OpenAirInterface runs more stable with this! :)<br>
    </p>
    <p>Florian.<br>
    </p>
    <p>On 1/8/2020 17:31, Aaron Rossetto via USRP-users wrote:<br>
    </p>
    <blockquote type="cite"
cite="mid:BYAPR04MB4456DA8FD19AC8C087B4D6FCF83E0@BYAPR04MB4456.namprd04.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">Hello Florian,

I believe in UHD 3.15, the keys in the uhd.conf file use dashes (-), not underscores between words, e.g.:

[dpdk-mac=00:11:22:33:44:55]
dpdk-io-cpu = 1
dpdk-ipv4 = 192.168.10.1/24

Hope that helps,
Aaron



From: USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> On Behalf Of Florian Kaltenberger via USRP-users
Sent: Wednesday, January 8, 2020 10:10 AM
Subject: [EXTERNAL] Re: [USRP-users] DPDK runtime error

Hi, 
we now installed DPDK 17.11 but I still have exactly the same problem. 
I have a feeling the problem is that I am not addressing the device correctly. Here is what I did:
The USRP is connected to ethernet interfaces "p1p2" (mac_addr 64:9d:99:b1:1e:8d) and "p1p4" (mac_addr 64:9d:99:b1:1e:8f) which are originally configured with IP addresses 192.168.10.1 and inet_addr 192.168.20.1. This configuration works fine without dpdk.
Then I deactivate these two interfaces using "ifconfig p1p2 down" "ifconfig p1p4 down"and do "dpdk-devbind --bind=vfio-pci 01:00.1" and "dpdk-devbind --bind=vfio-pci 01:00.3". The status of "dpdk-devbind -s" is below.
In the file /etc/uhd/uhd.conf I specify
[dpdk_mac=64:9d:99:b1:1e:8d]
dpdk_io_cpu = 1
dpdk_ipv4 = 192.168.10.1/24

[dpdk_mac=64:9d:99:b1:1e:8f]
dpdk_io_cpu = 2
dpdk_ipv4 = 192.168.20.1/24
Is this the correct way of specifying it? What surprises me is that DPDK requires to address the device by its PCI address while UHD still requires to set the IP addresses. 
Florian.

_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <title></title>
      Follow us on <a
        href="https://plus.google.com/+OpenairinterfaceOrg">Google+</a>,
      <a href="https://www.linkedin.com/company/openairinterface">LinkedIn</a>,
      or <a href="https://twitter.com/osalliance5g">Twitter</a>!<br>
    </div>
  </body>
</html>

--------------DCD60451D9A29EDA52C39B74--

--------------DEF3213986ACA042918BE9E0
Content-Type: text/x-vcard; charset=utf-8;
 name="florian_kaltenberger.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="florian_kaltenberger.vcf"

begin:vcard
fn:Florian Kaltenberger
n:Kaltenberger;Florian
org:EURECOM;Mobile Communications
adr;dom:450 route des chappes;;Campus SophiaTech;Biot;;06410
email;internet:florian.kaltenberger@eurecom.fr
title:Assitant Professor
tel;work:+33 4 9300 8186
version:2.1
end:vcard


--------------DEF3213986ACA042918BE9E0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------DEF3213986ACA042918BE9E0--

