Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 029A2177DAF
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 18:44:35 +0100 (CET)
Received: from [::1] (port=41334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9Bas-0007OT-31; Tue, 03 Mar 2020 12:44:34 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:37557)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j9Ban-0006zh-Hb
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 12:44:29 -0500
Received: by mail-qk1-f173.google.com with SMTP id m9so4266676qke.4
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 09:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=J7qQWqrm0iVgQajBeGvNOHvJyKNLf7UNVlP6u/LGrNg=;
 b=J7PLg2WuyYy4ysl4A+l4z7Gp/5/yKMdEwW+DNQOD6pguWSnMWwLQX/bwbgYL8MJ2To
 1AXxVNRHfw64ELPMaaylJ0Zr/fm0VGrBzn+YuiZ6YkfUpjkn3cD9AECAoA9NeDIb+o9B
 2t6452vaflBNeozCSzKjGsLfy5e6rjkUr0xyGA6e/Q8o32rPS0+PFuKIRVSo8gBnI7Qk
 ORXEJB7yyU7pw+/6AJMQ7R29pJ+7KjEwrdKlPK4vZxM/6CV0/6lIlisf/1WS8PPc6ZHB
 XYOG6rXcSxhGvJY76oUb1Wm8QdDucTPnIX4+m35rzNwqYNlKQIp91MQQIeUkmtlxEw4+
 iskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=J7qQWqrm0iVgQajBeGvNOHvJyKNLf7UNVlP6u/LGrNg=;
 b=rxIWt9zk2wkMl+CFeLfjk/QDFVHRE24EXSfzq6UBODhVQaAqyzYHhLaFoxMbLnjhml
 bCCx372JNCowjdrw/MEabkaiLkMIo9lWvXBTXVtrhfv6Jo75JcoHUC/QI+mbpQeO4rVe
 Yd+JtxC9ymyARwF60ISF7Iz1O8X7nC+fug00QHKjUbMmSNwkx+OaCITJ15Wgv4aCntFE
 r2f3twMDm0L221RM+tTXdVINAoP035kx4pfAYC+reObDKUV0btLhjVNHW40dVj3FfMnZ
 YzhERUizhtCQMIPsNeK0QKFx2vrH8ak/flUp8ZwPzD4/No1uFL23SZCpfAmGtDXCiWo2
 huSg==
X-Gm-Message-State: ANhLgQ3GBEBRv8F0Aq11mCqiOtJn2WvbqUXBdMjKK9AhDAwG0tzRygzG
 91xqTETOL65pi4nZEFX2ZjBh21HqvWs=
X-Google-Smtp-Source: ADFU+vs4io3GUo2aYE9Sxo00rSpXjpPOKxhDezzPsPsLUl5113P9r5P0r0PRBn/YqwdMAY4w/so1Mg==
X-Received: by 2002:ae9:eb0f:: with SMTP id b15mr5069624qkg.421.1583257427975; 
 Tue, 03 Mar 2020 09:43:47 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id m22sm2020277qkk.94.2020.03.03.09.43.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 09:43:47 -0800 (PST)
Message-ID: <5E5E9753.9040502@gmail.com>
Date: Tue, 03 Mar 2020 12:43:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1994044559.834986.1582780917804.ref@mail.yahoo.com>
 <1994044559.834986.1582780917804@mail.yahoo.com>
 <CAB__hTT=tXe=hpWaESU8YVrWpG8BjvZtQ5kTZY9YxJihGc+TBg@mail.gmail.com>
In-Reply-To: <CAB__hTT=tXe=hpWaESU8YVrWpG8BjvZtQ5kTZY9YxJihGc+TBg@mail.gmail.com>
Subject: Re: [USRP-users] USRP N310
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
Content-Type: multipart/mixed; boundary="===============6667520562744287158=="
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
--===============6667520562744287158==
Content-Type: multipart/alternative;
 boundary="------------020301090506030709060500"

This is a multi-part message in MIME format.
--------------020301090506030709060500
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2020 12:31 PM, Rob Kossler via USRP-users wrote:
> Hi Len,
> I have run some testing of this capability.  A few remarks:
>
>   * In my test setup, I had a signal generator running into a 1:4
>     splitter with outputs connected to the four N310 Rx2 inputs.  I
>     used another signal generator as the LO source running into a 1:2
>     splitter with outputs connected to the N310 Rx LO inputs with
>     amplitude near 3 dBm <https://kb.ettus.com/N300/N310#Front_Panel>
>     at N310 LO inputs.
>   * When using external LO, the RF range is limited to a max of 4 GHz
>     (rather than 6 GHz which is the limit with internal LO)
>   * I had problems with UHD 3.14 because there was some bug related to
>     resetting the phase of the DDC.  I had success with 3.15. But even
>     with success, there is still a 180 degree ambiguity between
>     channels 1/2 and channels 3/4.  I am not certain regarding the
>     circumstances that can cause the ambiguity to flip, but I think it
>     only occurs at application startup such that once your application
>     is running, you can expect consistent results with no ambiguity flips.
>
This is probably due to the 2XLO phase-splitter inside the AD9371 
chips--it's based on a flip-flop, whose initial state is unpredictable.  Any
   2XLO phase-splitter has this property--including on the WBX 
daughtercard used on N210/X310 etc.  The mixer has a 2XLO phase-splitter,
   so also shows this 180deg phase ambiguity.


>   * When you launch your application and create a usrp device
>     instance, the UHD software will automatically try to run some IQ
>     calibrations (RX_QEC_INIT) expecting that the RF is at 2.5 GHz,
>     which implies that your external LO must be at 5 GHz at startup. 
>     After startup is complete (and this calibration is complete) you
>     can change the freq of your LO and retune the RF of the various
>     channels keeping in mind that the external LO must always be twice
>     the desired RF.  If you want to avoid the startup calibration
>     (with LO at 5 GHz), you can specify explicitly which calibrations
>     <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations>
>     you want using the device args and choose not to run RX_QEC_INIT.
>     But, I'm not sure if skipping this calibration could have negative
>     effects on signal quality.
>
> Let me know if you have questions.
> Rob
>
>
> On Thu, Feb 27, 2020 at 12:22 AM Len via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Folks,
>     I'm looking for information from any subscriber(s) to this forum
>     that have successfully used the USRP N310 to provide 4 Rx channels
>     which are both coherent and synchronized.  I've heard this could
>     be challenging and I know people have been able to do this
>     successfully so I was wondering where I might find some detailed
>     information/instructions on how best to accomplish this.  I was
>     told this forum would be a good place to start.  So any block
>     diagrams illustrating the Master LO and Master Clock hookups
>     needed along with any available calibration procedure(s)
>     describing how to actually check/verify coherence and
>     synchronization between the 4 channels would be great.
>
>
>     Thanks,
>     Len
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------020301090506030709060500
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/03/2020 12:31 PM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAB__hTT=tXe=hpWaESU8YVrWpG8BjvZtQ5kTZY9YxJihGc+TBg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hi Len,</div>
        <div>I have run some testing of this capability.  A few remarks:</div>
        <div>
          <ul>
            <li>In my test setup, I had a signal generator running into
              a 1:4 splitter with outputs connected to the four N310 Rx2
              inputs.  I used another signal generator as the LO source
              running into a 1:2 splitter with outputs connected to the
              N310 Rx LO inputs with amplitude <a
                moz-do-not-send="true"
                href="https://kb.ettus.com/N300/N310#Front_Panel">near 3
                dBm</a> at N310 LO inputs.</li>
            <li>When using external LO, the RF range is limited to a max
              of 4 GHz (rather than 6 GHz which is the limit with
              internal LO)</li>
            <li>I had problems with UHD 3.14 because there was some bug
              related to resetting the phase of the DDC.  I had success
              with 3.15. But even with success, there is still a 180
              degree ambiguity between channels 1/2 and channels 3/4.  I
              am not certain regarding the circumstances that can cause
              the ambiguity to flip, but I think it only occurs at
              application startup such that once your application is
              running, you can expect consistent results with no
              ambiguity flips.</li>
          </ul>
        </div>
      </div>
    </blockquote>
    This is probably due to the 2XLO phase-splitter inside the AD9371
    chips--it's based on a flip-flop, whose initial state is
    unpredictable.  Any<br>
      2XLO phase-splitter has this property--including on the WBX
    daughtercard used on N210/X310 etc.  The mixer has a 2XLO
    phase-splitter,<br>
      so also shows this 180deg phase ambiguity.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAB__hTT=tXe=hpWaESU8YVrWpG8BjvZtQ5kTZY9YxJihGc+TBg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <ul>
            <li>When you launch your application and create a usrp
              device instance, the UHD software will automatically try
              to run some IQ calibrations (RX_QEC_INIT) expecting that
              the RF is at 2.5 GHz, which implies that your external LO
              must be at 5 GHz at startup.  After startup is complete
              (and this calibration is complete) you can change the freq
              of your LO and retune the RF of the various channels
              keeping in mind that the external LO must always be twice
              the desired RF.  If you want to avoid the startup
              calibration (with LO at 5 GHz), you can specify explicitly
              which <a moz-do-not-send="true"
href="https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations">calibrations</a>
              you want using the device args and choose not to run
              RX_QEC_INIT. But, I'm not sure if skipping this
              calibration could have negative effects on signal quality.</li>
          </ul>
          <div>Let me know if you have questions.</div>
          <div>Rob</div>
          <div><br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, Feb 27, 2020 at
            12:22 AM Len via USRP-users &lt;<a moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div style="color:black;font:10pt arial">Folks,
              <div>I'm looking for information from any subscriber(s) to
                this forum that have successfully used the USRP N310 to
                provide 4 Rx channels which are both coherent and
                synchronized.  I've heard this could be challenging and
                I know people have been able to do this successfully so
                I was wondering where I might find some detailed
                information/instructions on how best to accomplish
                this.  I was told this forum would be a good place to
                start.  So any block diagrams illustrating the Master LO
                and Master Clock hookups needed along with any available
                calibration procedure(s) describing how to actually
                check/verify coherence and synchronization between the 4
                channels would be great.</div>
              <div><br>
              </div>
              <div><br>
              </div>
              <div>Thanks,</div>
              <div>Len     </div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
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

--------------020301090506030709060500--


--===============6667520562744287158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6667520562744287158==--

