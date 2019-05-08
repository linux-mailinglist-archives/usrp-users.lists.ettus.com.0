Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2A817EB6
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 19:02:39 +0200 (CEST)
Received: from [::1] (port=59622 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOPxm-0002Je-Ag; Wed, 08 May 2019 13:02:38 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:35434)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hOPxE-0001uR-9X
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 13:02:34 -0400
Received: by mail-qt1-f174.google.com with SMTP id d20so6486864qto.2
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 10:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=DG9NHgujzLFzLYttSdrY8jra0HJhva76VpGTxjGTLhs=;
 b=R/g/XHsT6e9F00WXZ2zZeW7xd94oi6OmZ5yu+2nmH7j+RvzsN1o8U50I/L6l9V/Ku1
 3Z3ANJZ9u5RloaKZhfEmiPB2Rtka18NLHXJ02vI01VBIp+xn41j03KNznP0G/a4g3vmW
 s2jLIBaalwkv7PVBuW/e+ytPe87b04RsbaQie+WceCnU116V2zFODlMF3hOT/AEiVyBC
 SDxmye+6Ej4maLWteU4EPcx3An5SMPfl8cAPLUeXspxFle+zdzP3wAog3uNOMc+cmKKX
 YGOchmKwi+jr1kASylU8oBrr78SSem9qZZdQnlZUDoCE6dhOVCQDuXIwvpWwSDSroWnX
 StsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=DG9NHgujzLFzLYttSdrY8jra0HJhva76VpGTxjGTLhs=;
 b=GiEaYVCb3nCpPJei7/YV+95DNmiIvyN+5XLnEhwG6iGHZ0sBEsxu2NoVp1zNCNAx6e
 lRUAnigy4W+28pTSB3mcsLd0VE9Z6ZFJSclvzJ/I9I6WN5jHJvVfw1xvIytmZdaiRdTP
 Ycvns057Mk9asV7zdQGYpgSU8mo7OmDRVQPBOi3FnoxrIC8jL7LMGXdAk7zWDi9VcfAX
 9OzOtXxopmHIKWytzkwevcU3czNqLmOya8ZLkhsrxYMwDsEkzBpq3HZs2JdDRKlgh1+i
 WVy0Xf3f2L0+yxkgoaU6koa6ygxCgKs6a5fJUSa2i0R+ZBiK8Vul17GE3hUoFSL02vDj
 sX2g==
X-Gm-Message-State: APjAAAX73cFMHpIRLkJ+8lFg2+bOzzll3XWARliWUvM2vZlUf2cgQmOm
 foLqnHhG580uV2S/8phJdmCZFVc8l5g=
X-Google-Smtp-Source: APXvYqw9nrImBtjL1N5EHMjCW323cyzUhBTiu8y6TSTeLvBDFn00hCsvVBOvb19DEhnVHpnXmCXrWA==
X-Received: by 2002:ac8:70c:: with SMTP id g12mr19687947qth.151.1557334883383; 
 Wed, 08 May 2019 10:01:23 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id s185sm9294114qkf.74.2019.05.08.10.01.22
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 10:01:22 -0700 (PDT)
Message-ID: <5CD30B61.8080700@gmail.com>
Date: Wed, 08 May 2019 13:01:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
In-Reply-To: <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Bringing an elderly N210 to life by loading
 current firmware/fpga images
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
Content-Type: multipart/mixed; boundary="===============8788879565429248846=="
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
--===============8788879565429248846==
Content-Type: multipart/alternative;
 boundary="------------010409020502060004020201"

This is a multi-part message in MIME format.
--------------010409020502060004020201
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/08/2019 12:56 PM, Joe Martin via USRP-users wrote:
> Wow, okay; that’s disheartening.  Thanks much for the info, Jason. 
>  Nope, the Rev3 bit file doesn’t work; tried it.  I’ll see if the 
> support email adr can be of use.
>
> Joe
>
There was a hardware change, as I recall, between Rev2 and Rev3 
involving the inputs to the ADCs.


>> On May 8, 2019, at 10:44 AM, Jason Matusiak 
>> <jason@gardettoengineering.com 
>> <mailto:jason@gardettoengineering.com>> wrote:
>>
>> Joe, I think you might be SOL.  If you take a look at this thread 
>> from me last year, I had no luck: 
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html
>>
>>
>> Also, when I pinged Ettus directly, here is some info I got back from 
>> them (from two different emails in the thread):
>> "we've been having some trouble tracking down Rev2 bitfiles, because no
>> one here was around when that was built. If you're trying to unbrick
>> them, Rev3 bitfiles might be OK, but I'm not completely sure.
>>
>> support@ettus.com <mailto:support@ettus.com>might know more by know.
>> really sorry, but those Rev2s are just so old. And all the people from
>> that era seem to be gone. Sorry, can't help you with those Rev2s."
>>
>> ------------------------------------------------------------------------
>> *From:*USRP-users <usrp-users-bounces@lists.ettus.com 
>> <mailto:usrp-users-bounces@lists.ettus.com>> on behalf of Joe Martin 
>> via USRP-users <usrp-users@lists.ettus.com 
>> <mailto:usrp-users@lists.ettus.com>>
>> *Sent:*Wednesday, May 8, 2019 11:55 AM
>> *To:*Joe Martin via USRP-users
>> *Subject:*[USRP-users] Bringing an elderly N210 to life by loading 
>> current firmware/fpga images
>> I am trying to bring an elderly N210 r2.0 with unknown history to 
>> life by loading current UHD firmware and fpga images from a 1Gigabit 
>> ethernet connection on an AMD 2950X, 3.4GHz, 2TB SSD PC running 
>> Ubuntu 18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2 software but having 
>> difficulty.
>>
>> Following instructions in “USRP Hardware Driver and USRP Manual: 
>> USRP2 and N2x0 Series”:
>>
>> My initial action was to load the “usrp_n210_r4_fpga.bit" file into 
>> the N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II JTAG 
>> programming cable from a Win7 PC running Xilinx ISE iMPACT, which 
>> reported “Program Succeeded” for the action.  Ethernet LEDs on the 
>> N210 are variously lighted showing activity on the connection port.
>>
>> With the N210 connected to the Linux PC 1Gbps ethernet port, issuing 
>> the following commands result in the responses shown in the 
>> screenshot image below:
>>
>> <Screenshot from 2019-05-08 08-46-52.png>
>>
>> My (naive!) interpretation of the above responses is that the FPGA 
>> may not actually have been programmed with the *.bit code even though 
>> iMPACT reported success in programming.  Can someone assist me in 
>> understanding whether my interpretation is correct or not and, most 
>> importantly, suggest what I might try next to bring this N210 to life?
>>
>> The “Please run:” suggestion results in the “Received invalid reply 
>> 32 from device” error.  It seems no matter what I try the “Received 
>> invalid reply 32 from device” RuntimeError is reported back when I 
>> try to load any new firmware/FPGA images.
>>
>> Thanks!
>>
>> Joe
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------010409020502060004020201
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/08/2019 12:56 PM, Joe Martin via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      Wow, okay; that’s disheartening.  Thanks much for the info, Jason.
       Nope, the Rev3 bit file doesn’t work; tried it.  I’ll see if the
      support email adr can be of use.  
      <div class=""><br class="">
      </div>
      <div class="">Joe<br class="">
        <div><br class="">
        </div>
      </div>
    </blockquote>
    There was a hardware change, as I recall, between Rev2 and Rev3
    involving the inputs to the ADCs.<br>
    <br>
    <br>
    <blockquote cite="mid:84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com"
      type="cite">
      <div class="">
        <div>
          <blockquote type="cite" class="">
            <div class="">On May 8, 2019, at 10:44 AM, Jason Matusiak
              &lt;<a moz-do-not-send="true"
                href="mailto:jason@gardettoengineering.com" class="">jason@gardettoengineering.com</a>&gt;
              wrote:</div>
            <br class="Apple-interchange-newline">
            <div class="">
              <div style="caret-color: rgb(0, 0, 0); font-style: normal;
                font-variant-caps: normal; font-weight: normal;
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                text-decoration: none; font-family: Calibri, Arial,
                Helvetica, sans-serif; font-size: 12pt;" class="">Joe, I
                think you might be SOL.  If you take a look at this
                thread from me last year, I had no luck: <a
                  moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html"
                  class="">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html</a></div>
              <div style="caret-color: rgb(0, 0, 0); font-style: normal;
                font-variant-caps: normal; font-weight: normal;
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                text-decoration: none; font-family: Calibri, Arial,
                Helvetica, sans-serif; font-size: 12pt;" class=""><br
                  class="">
              </div>
              <div style="caret-color: rgb(0, 0, 0); font-style: normal;
                font-variant-caps: normal; font-weight: normal;
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                text-decoration: none; font-family: Calibri, Arial,
                Helvetica, sans-serif; font-size: 12pt;" class=""><br
                  class="">
              </div>
              <div style="caret-color: rgb(0, 0, 0); font-style: normal;
                font-variant-caps: normal; font-weight: normal;
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                text-decoration: none; font-family: Calibri, Arial,
                Helvetica, sans-serif; font-size: 12pt;" class="">Also,
                when I pinged Ettus directly, here is some info I got
                back from them (from two different emails in the
                thread):</div>
              <div style="caret-color: rgb(0, 0, 0); font-style: normal;
                font-variant-caps: normal; font-weight: normal;
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                text-decoration: none; font-family: Calibri, Arial,
                Helvetica, sans-serif; font-size: 12pt;" class="">"<span
                  style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255); display: inline
                  !important;" class="">we've been having some trouble
                  tracking down Rev2 bitfiles, because no</span><br
                  style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255);" class="">
                <span style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255); display: inline
                  !important;" class="">one here was around when that
                  was built. If you're trying to unbrick</span><br
                  style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255);" class="">
                <span style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255); display: inline
                  !important;" class="">them, Rev3 bitfiles might be OK,
                  but I'm not completely sure.</span></div>
              <div style="caret-color: rgb(0, 0, 0); font-style: normal;
                font-variant-caps: normal; font-weight: normal;
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                text-decoration: none; font-family: Calibri, Arial,
                Helvetica, sans-serif; font-size: 12pt;" class=""><br
                  style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255);" class="">
                <span style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255); display: inline
                  !important;" class=""><a moz-do-not-send="true"
                    href="mailto:support@ettus.com" class="">support@ettus.com</a><span
                    class="Apple-converted-space"> </span>might know
                  more by know.</span></div>
              <div style="caret-color: rgb(0, 0, 0); font-style: normal;
                font-variant-caps: normal; font-weight: normal;
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                text-decoration: none; font-family: Calibri, Arial,
                Helvetica, sans-serif; font-size: 12pt;" class=""><span
                  style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255); display: inline
                  !important;" class="">really sorry, but those Rev2s
                  are just so old. And all the people from</span><br
                  style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255);" class="">
                <span style="color: rgb(32, 31, 30); font-family:
                  &quot;Segoe UI&quot;, &quot;Segoe UI Web (West
                  European)&quot;, &quot;Segoe UI&quot;, -apple-system,
                  BlinkMacSystemFont, Roboto, &quot;Helvetica
                  Neue&quot;, sans-serif; font-size: 14.6667px;
                  background-color: rgb(255, 255, 255); display: inline
                  !important;" class="">that era seem to be gone. Sorry,
                  can't help you with those Rev2s."</span></div>
              <div id="Signature" style="caret-color: rgb(0, 0, 0);
                font-family: Helvetica; font-size: 12px; font-style:
                normal; font-variant-caps: normal; font-weight: normal;
                letter-spacing: normal; text-align: start; text-indent:
                0px; text-transform: none; white-space: normal;
                word-spacing: 0px; -webkit-text-stroke-width: 0px;
                text-decoration: none;" class="">
                <div class="">
                  <div style="font-family: Calibri, Arial, Helvetica,
                    sans-serif; font-size: 12pt;" class=""><br class="">
                  </div>
                  <hr tabindex="-1" style="display: inline-block; width:
                    1284.765625px;" class="">
                  <div id="divRplyFwdMsg" dir="ltr" class=""><font
                      style="font-size: 11pt;" class="" face="Calibri,
                      sans-serif"><b class="">From:</b><span
                        class="Apple-converted-space"> </span>USRP-users
                      &lt;<a moz-do-not-send="true"
                        href="mailto:usrp-users-bounces@lists.ettus.com"
                        class="">usrp-users-bounces@lists.ettus.com</a>&gt;
                      on behalf of Joe Martin via USRP-users &lt;<a
                        moz-do-not-send="true"
                        href="mailto:usrp-users@lists.ettus.com"
                        class="">usrp-users@lists.ettus.com</a>&gt;<br
                        class="">
                      <b class="">Sent:</b><span
                        class="Apple-converted-space"> </span>Wednesday,
                      May 8, 2019 11:55 AM<br class="">
                      <b class="">To:</b><span
                        class="Apple-converted-space"> </span>Joe Martin
                      via USRP-users<br class="">
                      <b class="">Subject:</b><span
                        class="Apple-converted-space"> </span>[USRP-users]
                      Bringing an elderly N210 to life by loading
                      current firmware/fpga images</font>
                    <div class=""> </div>
                  </div>
                  <div class="" style="word-wrap: break-word;
                    line-break: after-white-space;">I am trying to bring
                    an elderly N210 r2.0 with unknown history to life by
                    loading current UHD firmware and fpga images from a
                    1Gigabit ethernet connection on an AMD 2950X,
                    3.4GHz, 2TB SSD PC running Ubuntu 18.04 with UHD
                    3.14.0.HEAD-0-gd20a7ae2 software but having
                    difficulty. 
                    <div class=""><br class="">
                    </div>
                    <div class="">Following instructions in “USRP
                      Hardware Driver and USRP Manual: USRP2 and N2x0
                      Series”:</div>
                    <div class=""><br class="">
                    </div>
                    <div class="">My initial action was to load the
                      “usrp_n210_r4_fpga.bit" file into the N210
                      xc3sd3400a FPGA using a Xilinx Platform Cable USB
                      II JTAG programming cable from a Win7 PC running
                      Xilinx ISE iMPACT, which reported “Program
                      Succeeded” for the action.  Ethernet LEDs on the
                      N210 are variously lighted showing activity on the
                      connection port.</div>
                    <div class=""><br class="">
                    </div>
                    <div class="">With the N210 connected to the Linux
                      PC 1Gbps ethernet port, issuing the following
                      commands result in the responses shown in the
                      screenshot image below: </div>
                    <div class=""><br class="">
                    </div>
                    <div class=""><span
                        id="cid:70A3E5A1-EF1B-4D99-B156-F8CD7369666A">&lt;Screenshot
                        from 2019-05-08 08-46-52.png&gt;</span></div>
                    <div class=""><br class="">
                    </div>
                    <div class="">
                      <div class="">My (naive!) interpretation of the
                        above responses is that the FPGA may not
                        actually have been programmed with the *.bit
                        code even though iMPACT reported success in
                        programming.  Can someone assist me in
                        understanding whether my interpretation is
                        correct or not and, most importantly, suggest
                        what I might try next to bring this N210 to
                        life?  </div>
                      <div class=""><br class="">
                      </div>
                      <div class="">The “Please run:” suggestion results
                        in the “Received invalid reply 32 from device”
                        error.  It seems no matter what I try the
                        “Received invalid reply 32 from device”
                        RuntimeError is reported back when I try to load
                        any new firmware/FPGA images.  </div>
                      <div class=""><br class="">
                      </div>
                      <div class="">Thanks!</div>
                      <div class=""><br class="">
                      </div>
                      <div class="">Joe</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
        <br class="">
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

--------------010409020502060004020201--


--===============8788879565429248846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8788879565429248846==--

