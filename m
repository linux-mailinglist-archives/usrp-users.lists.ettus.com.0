Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A83185A0
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 08:59:12 +0200 (CEST)
Received: from [::1] (port=39358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOd1L-0005Ew-Bx; Thu, 09 May 2019 02:59:11 -0400
Received: from forward102o.mail.yandex.net ([37.140.190.182]:47143)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <ramazan.cetin@gohm.com.tr>)
 id 1hOd0m-00057D-W9
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 02:59:07 -0400
Received: from mxback15o.mail.yandex.net (mxback15o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::66])
 by forward102o.mail.yandex.net (Yandex) with ESMTP id 4ED0566803F9;
 Thu,  9 May 2019 09:57:55 +0300 (MSK)
Received: from smtp1j.mail.yandex.net (smtp1j.mail.yandex.net
 [2a02:6b8:0:801::ab])
 by mxback15o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id 3gVgA0S1ZT-vtsenOn2;
 Thu, 09 May 2019 09:57:55 +0300
Received: by smtp1j.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 hPzDFEfaGr-vrKW8eNM; Thu, 09 May 2019 09:57:54 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
To: Robin Coxe <robin.coxe@ettus.com>, usrp-users@lists.ettus.com,
 Jason Matusiak <jason@gardettoengineering.com>
References: <49b1b11e-15ac-e733-6643-549679512c09@gohm.com.tr>
 <BL0PR12MB2340D4EC35F3885332A766A8AF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <2031afcb-51ef-007c-efd8-b8bf77aa1d25@gohm.com.tr>
 <BN7PR03MB4545A32B6F443E8A8EA1488CF2330@BN7PR03MB4545.namprd03.prod.outlook.com>
Message-ID: <07568865-8331-9481-7ef5-f000f7c5517a@gohm.com.tr>
Date: Thu, 9 May 2019 09:57:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <BN7PR03MB4545A32B6F443E8A8EA1488CF2330@BN7PR03MB4545.namprd03.prod.outlook.com>
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Running E310 in Network Mode
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
From: =?utf-8?q?Ramazan_=C3=87etin_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Ramazan_=c3=87etin?= <ramazan.cetin@gohm.com.tr>
Content-Type: multipart/mixed; boundary="===============1029980810038467564=="
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
--===============1029980810038467564==
Content-Type: multipart/alternative;
 boundary="------------910EA7C81C1AAA1D56E8A981"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------910EA7C81C1AAA1D56E8A981
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hello Robin,

Thank you for your answer. I will explain my situation why we want this. 
I need to build a OFDM mesh networking setup and we bought several E310 
devices due to some size limitations. So, i need to achieve OFDM mesh 
network in E310 devices.


Firstly, i tried with embedded CPU but it cannot handle incoming data 
rate due to its limited computational capability. When i try RFNoC, just 
3 of RFNoC blocks can fit into FPGA and there is no OFDM implementation 
with three blocks. So, i guess i need to place some blocks on FPGA and 
some blocks on CPU. Is it right? Can you suggest a way to achieve this 
task on E310?



On 9.05.2019 09:37, Robin Coxe wrote:
> If you need higher BW streaming to a host PC in network mode with a 
> similar front end to the E310, take a look at the USRP E320 if you 
> need a 10gigE link or the B210 if USB 3.0 data rates are sufficient.
>
> The E310 was designed to be a standalone embedded SDR, not a networked 
> device with full BW streaming capabilities.
>
> -Robin
>
> ------------------------------------------------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
> Ramazan Çetin via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, May 8, 2019 11:21 PM
> *To:* Jason Matusiak; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Running E310 in Network Mode
>
> Hello Jason,
>
> Thank you for your answer. Actually, i have investigated this link. 
> But, i would like to remove limitations on network mode and use USRP 
> E310 line USRP N210. Passing samples directly from FPGA to network. Is 
> it possible?
>
>
> Regards.
>
> On 8.05.2019 17:14, Jason Matusiak wrote:
>> See here: 
>> https://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_network_mode
>>
>>
>> ------------------------------------------------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
>> Ramazan Çetin via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Wednesday, May 8, 2019 8:02 AM
>> *To:* Ettus Research Support; usrp-users@lists.ettus.com
>> *Subject:* [USRP-users] Running E310 in Network Mode
>> Hello,
>>
>> We want to run USRP E310 in network mode. I think the samples coming
>> from FPGA passing through CPU before sending to network. This decreases
>> bandwidth because of CPU limitations.
>>
>>
>> So, is there any ettus image or suggestions that we can run E310
>> directly from FPGA to network without speed limitations? (like N210 
>> or B210)
>>
>> Best regards.
>>
>> Ramazan
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------910EA7C81C1AAA1D56E8A981
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Robin,</p>
    <p>Thank you for your answer. I will explain my situation why we
      want this. I need to build a OFDM mesh networking setup and we
      bought several E310 devices due to some size limitations. So, i
      need to achieve OFDM mesh network in E310 devices. <br>
    </p>
    <p><br>
    </p>
    <p>Firstly, i tried with embedded CPU but it cannot handle incoming
      data rate due to its limited computational capability. When i try
      RFNoC, just 3 of RFNoC blocks can fit into FPGA and there is no
      OFDM implementation with three blocks. So, i guess i need to place
      some blocks on FPGA and some blocks on CPU. Is it right? Can you
      suggest a way to achieve this task on E310?</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9.05.2019 09:37, Robin Coxe wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:BN7PR03MB4545A32B6F443E8A8EA1488CF2330@BN7PR03MB4545.namprd03.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div>
        <div>
          <div>
            <div style="direction: ltr;">If you need higher BW streaming
              to a host PC in network mode with a similar front end to
              the E310, take a look at the USRP E320 if you need a
              10gigE link or the B210 if USB 3.0 data rates are
              sufficient.  </div>
            <div><br>
            </div>
            <div style="direction: ltr;">The E310 was designed to be a
              standalone embedded SDR, not a networked device with full
              BW streaming capabilities.  </div>
            <div><br>
            </div>
            <div style="direction: ltr;">-Robin</div>
          </div>
          <div><br>
          </div>
        </div>
        <div> </div>
        <hr style="display:inline-block;width:98%" tabindex="-1">
        <div id="divRplyFwdMsg" dir="dir=&quot;ltr&quot;"><font
            style="font-size:11pt" face="Calibri, sans-serif"
            color="#000000"><b>From:</b> USRP-users
            <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of
            Ramazan Çetin via USRP-users
            <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
            <b>Sent:</b> Wednesday, May 8, 2019 11:21 PM<br>
            <b>To:</b> Jason Matusiak; <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
            <b>Subject:</b> Re: [USRP-users] Running E310 in Network
            Mode
            <div> </div>
          </font></div>
        <meta content="text/html; charset=Windows-1252">
        <p>Hello Jason,</p>
        <p>Thank you for your answer. Actually, i have investigated this
          link. But, i would like to remove limitations on network mode
          and use USRP E310 line USRP N210. Passing samples directly
          from FPGA to network. Is it possible?</p>
        <p><br>
        </p>
        <p>Regards.<br>
        </p>
        <div class="moz-cite-prefix">On 8.05.2019 17:14, Jason Matusiak
          wrote:<br>
        </div>
        <blockquote type="cite">
          <style type="text/css" style="display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            See here: <a
href="https://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_network_mode"
              moz-do-not-send="true">https://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_network_mode</a></div>
          <br>
          <div id="Signature">
            <div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <hr tabindex="-1" style="display:inline-block; width:98%">
              <div id="divRplyFwdMsg" dir="ltr"><font
                  style="font-size:11pt" face="Calibri, sans-serif"
                  color="#000000"><b>From:</b> USRP-users
                  <a class="moz-txt-link-rfc2396E"
                    href="mailto:usrp-users-bounces@lists.ettus.com"
                    moz-do-not-send="true">
                    &lt;usrp-users-bounces@lists.ettus.com&gt;</a> on
                  behalf of Ramazan Çetin via USRP-users
                  <a class="moz-txt-link-rfc2396E"
                    href="mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send="true">&lt;usrp-users@lists.ettus.com&gt;</a><br>
                  <b>Sent:</b> Wednesday, May 8, 2019 8:02 AM<br>
                  <b>To:</b> Ettus Research Support; <a
                    class="moz-txt-link-abbreviated"
                    href="mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send="true">
                    usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [USRP-users] Running E310 in Network
                  Mode</font>
                <div> </div>
              </div>
              <div class="BodyFragment"><font size="2"><span
                    style="font-size:11pt">
                    <div class="PlainText">Hello,<br>
                      <br>
                      We want to run USRP E310 in network mode. I think
                      the samples coming <br>
                      from FPGA passing through CPU before sending to
                      network. This decreases <br>
                      bandwidth because of CPU limitations.<br>
                      <br>
                      <br>
                      So, is there any ettus image or suggestions that
                      we can run E310 <br>
                      directly from FPGA to network without speed
                      limitations? (like N210 or B210)<br>
                      <br>
                      Best regards.<br>
                      <br>
                      Ramazan<br>
                      <br>
                      <br>
                      _______________________________________________<br>
                      USRP-users mailing list<br>
                      <a class="moz-txt-link-abbreviated"
                        href="mailto:USRP-users@lists.ettus.com"
                        moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                      <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                        moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                    </div>
                  </span></font></div>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------910EA7C81C1AAA1D56E8A981--


--===============1029980810038467564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1029980810038467564==--

