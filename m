Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A789222AF75
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 14:34:46 +0200 (CEST)
Received: from [::1] (port=32914 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyaQv-0000EQ-PH; Thu, 23 Jul 2020 08:34:45 -0400
Received: from smtp109.ord1d.emailsrvr.com ([184.106.54.109]:45606)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jasonr@3db-labs.com>) id 1jyaQs-00006a-Ab
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 08:34:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=3db-labs.com;
 s=20191115-upmk6iau; t=1595507641;
 bh=8KjSUzFVF8cf+RsExTVMzb0kybyeeJTDVHIELMA66oQ=;
 h=Subject:To:From:Date:From;
 b=KoTkqrSnCjYCsnQNPtAiXIQVX4753Y3rhBLp1kx5VeakbQDYA/9AKIY45V+DXytrS
 aB7jH/qap9MYPWkAzCO4LRg04VBKNrMcrcSnTEI7n5pU5waXhGLvjHePZd7YF0YM6f
 8MlMTxGBPSGS0vzPHFy3e5ol3Cx3vkOgpkKZkyPE=
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp22.relay.ord1d.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id 8A3B0E01D7
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 08:34:01 -0400 (EDT)
To: usrp-users@lists.ettus.com
References: <AF6B9576-0AB8-4F40-8A12-EA6E0BCE9AA9@mac.com>
Message-ID: <b1917cce-a5b3-ccdc-bb4c-074f8866ee1d@3db-labs.com>
Date: Thu, 23 Jul 2020 08:34:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <AF6B9576-0AB8-4F40-8A12-EA6E0BCE9AA9@mac.com>
Content-Language: en-US
X-Classification-ID: 2b295b11-89ba-4e60-b7a0-98e65313fc97-1-1
Subject: Re: [USRP-users] B200mini with GNSS-SDR
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
From: Jason Roehm via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Roehm <jasonr@3db-labs.com>
Content-Type: multipart/mixed; boundary="===============6624795273221990250=="
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
--===============6624795273221990250==
Content-Type: multipart/alternative;
 boundary="------------616DAC95C7E3657455D82E93"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------616DAC95C7E3657455D82E93
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Those are probably jumps due to instantaneous changes in the frequency 
control in the internal TCXO. Try injecting an external 10 MHz reference 
clock and using that instead to see if it makes the jumps go away.

Jason

On 7/23/20 8:31 AM, Don Kelly via USRP-users wrote:
> Any other usrp-users using the B200mini and the GNSS-SDR software? 
> I’ve got it running, but am seeing some unusual behavior so am hoping 
> to discuss configurations with others.
>
> In particular, I’m seeing “jumps” in the GNSS-SDR calculation of 
> Doppler, and I do not see this running the same config on a HackRF. 
> I’m guessing this may be a configuration issue, but want to rule out 
> some issue with my new B200mini.
>
> Thanks!
>
> Don
>
> Don Kelly
>
> Agile Engineering
>
> LinkedIn: www.linkedin.com/in/kellydak 
> <http://www.linkedin.com/in/kellydak>
> Cell:  281-221-2853
> 4403 Orange Leaf Court
> Houston, TX   77059
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------616DAC95C7E3657455D82E93
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Those are probably jumps due to instantaneous changes in the
      frequency control in the internal TCXO. Try injecting an external
      10 MHz reference clock and using that instead to see if it makes
      the jumps go away.<br>
    </p>
    <p>Jason<br>
    </p>
    <div class="moz-cite-prefix">On 7/23/20 8:31 AM, Don Kelly via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:AF6B9576-0AB8-4F40-8A12-EA6E0BCE9AA9@mac.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      Any other usrp-users using the B200mini and the GNSS-SDR software?
      I’ve got it running, but am seeing some unusual behavior so am
      hoping to discuss configurations with others. 
      <div class=""><br class="">
      </div>
      <div class="">In particular, I’m seeing “jumps” in the GNSS-SDR
        calculation of Doppler, and I do not see this running the same
        config on a HackRF. I’m guessing this may be a configuration
        issue, but want to rule out some issue with my new B200mini.</div>
      <div class=""><br class="">
      </div>
      <div class="">Thanks!<br class="">
        <div class="">
          <div dir="auto" style="caret-color: rgb(0, 0, 0); color:
            rgb(0, 0, 0); letter-spacing: normal; text-align: start;
            text-indent: 0px; text-transform: none; white-space: normal;
            word-spacing: 0px; -webkit-text-stroke-width: 0px;
            text-decoration: none; word-wrap: break-word;
            -webkit-nbsp-mode: space; line-break: after-white-space;"
            class="">
            <div dir="auto" style="color: rgb(0, 0, 0); letter-spacing:
              normal; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; word-spacing:
              0px; -webkit-text-stroke-width: 0px; word-wrap:
              break-word; -webkit-nbsp-mode: space; line-break:
              after-white-space;" class="">
              <div dir="auto" style="color: rgb(0, 0, 0);
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                word-wrap: break-word; -webkit-nbsp-mode: space;
                line-break: after-white-space;" class="">
                <div style="color: rgb(0, 0, 0); letter-spacing: normal;
                  text-align: start; text-indent: 0px; text-transform:
                  none; white-space: normal; word-spacing: 0px;
                  -webkit-text-stroke-width: 0px; word-wrap: break-word;
                  -webkit-nbsp-mode: space; line-break:
                  after-white-space;" class="">
                  <div style="color: rgb(0, 0, 0); letter-spacing:
                    normal; text-align: start; text-indent: 0px;
                    text-transform: none; white-space: normal;
                    word-spacing: 0px; -webkit-text-stroke-width: 0px;
                    word-wrap: break-word; -webkit-nbsp-mode: space;
                    line-break: after-white-space;" class="">
                    <div style="color: rgb(0, 0, 0); letter-spacing:
                      normal; text-align: start; text-indent: 0px;
                      text-transform: none; white-space: normal;
                      word-spacing: 0px; -webkit-text-stroke-width: 0px;
                      word-wrap: break-word; -webkit-nbsp-mode: space;
                      line-break: after-white-space;" class="">
                      <div style="word-wrap: break-word;
                        -webkit-nbsp-mode: space; line-break:
                        after-white-space;" class="">
                        <div style="color: rgb(0, 0, 0); font-family:
                          Helvetica; font-size: 14px; font-style:
                          normal; font-variant-caps: normal;
                          font-weight: normal; letter-spacing: normal;
                          text-align: start; text-indent: 0px;
                          text-transform: none; white-space: normal;
                          word-spacing: 0px; -webkit-text-stroke-width:
                          0px;"><br class="">
                          Don<br class="">
                          <br class="">
                          Don Kelly<br class="">
                          <br class="">
                          Agile Engineering<br class="">
                          <br class="">
                          LinkedIn: <a
                            href="http://www.linkedin.com/in/kellydak"
                            class="" moz-do-not-send="true">www.linkedin.com/in/kellydak</a><br
                            class="">
                          Cell:  281-221-2853<br class="">
                          4403 Orange Leaf Court<br class="">
                          Houston, TX   77059<br class="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <br class="">
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------616DAC95C7E3657455D82E93--


--===============6624795273221990250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6624795273221990250==--

