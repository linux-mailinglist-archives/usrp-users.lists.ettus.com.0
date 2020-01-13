Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0204B1397A9
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2020 18:29:55 +0100 (CET)
Received: from [::1] (port=52378 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ir3XC-0002LS-Q4; Mon, 13 Jan 2020 12:29:50 -0500
Received: from mail-qt1-f181.google.com ([209.85.160.181]:41483)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ir3X8-0001wp-7g
 for usrp-users@lists.ettus.com; Mon, 13 Jan 2020 12:29:46 -0500
Received: by mail-qt1-f181.google.com with SMTP id k40so9761101qtk.8
 for <usrp-users@lists.ettus.com>; Mon, 13 Jan 2020 09:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=lhF8Edx0s6dksZYExlnVdT7lf1n+nnWSI9M9BORYr5E=;
 b=AzmZtlCi32ZM9M1SjRH+DJAAjnjkYt9reCfA+BQiuCC0pCMS+E3jj8kXtsPAlJlKhr
 QPU9DrDE+2wJDKPaKFhC/ujZCzFOnoefjKe7LCcJWqTlUko98JlF8xIIWxJ5F97Y+Ery
 Aktm1WV8hh9RACNWSAvEnCeamyjRoCrCdDwZyqVr74bQ0gBwb5KPpk094viWKBwvhEVN
 ZKoxWxSoxLLY5VzYAGT/L2JOqzbcp4LhFzWgG1m8XubSYFtnj+FtNyKBIFZMsjiIg/1Y
 PV9OcGC+gDnt2b4/CQ4nyua7dZLWpjtv3sE9qHRfoD1ufAbSbsr/LLGMKdH1beuNieQN
 mdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=lhF8Edx0s6dksZYExlnVdT7lf1n+nnWSI9M9BORYr5E=;
 b=Dqq1yFC3HCQCpoMg/wmhjpwdErWPE66x2Wbf53CWOAloR5KFM7JKLgXzpPxn7eD9Eu
 s3Hnq+33cB1P5FcCLUjPF8xFrweT1GYFStvA27zPDbeNzPutMmBB+QGKjdcXRxHq2wnG
 AfQSf3Ii0S+mva5gM2MFKjg2+XXAorXZC32bdZqMh0sfOwq1H6cfpo6arjLidmBHC88J
 e9j6BVnQVus2nweXRoOpMx4+cnymh8vUewt/181WTl1ZQuiFmCNrnc1bmf0bY9LoXtbe
 3Qr/3sh0CsWaN3znmAIa7SmhPWlNaZN2MI8EomXVgDDFpAEshbomVzULQqzDX+3Pq7kU
 vGKg==
X-Gm-Message-State: APjAAAXEX8XbOSf6KenHhBHjAQh0Z0dTCcxiNARUAWFgMHVdQTWjDWKl
 SYRZ+FVQE74AY+RVwO5J31i5nIJI+Sg=
X-Google-Smtp-Source: APXvYqz0ywxPsDYm4HtRMBxOPgb6Qtmenw/Svcx/JrI8bEpSQloUPE/VT3/763eY7bn0KBJNVBDrmQ==
X-Received: by 2002:ac8:5159:: with SMTP id h25mr15369502qtn.249.1578936545470; 
 Mon, 13 Jan 2020 09:29:05 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id 3sm6016345qte.59.2020.01.13.09.29.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Jan 2020 09:29:05 -0800 (PST)
Message-ID: <5E1CA8E0.10402@gmail.com>
Date: Mon, 13 Jan 2020 12:29:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAA3PG_naMDLB52GhfcSwcr0CsU4aOooc+oQS70Lqvb+yjks7Pw@mail.gmail.com>
In-Reply-To: <CAA3PG_naMDLB52GhfcSwcr0CsU4aOooc+oQS70Lqvb+yjks7Pw@mail.gmail.com>
Subject: Re: [USRP-users] Benchmarking set_tx_freq and set_rx_freq on X310,
 B210 and N200
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
Content-Type: multipart/mixed; boundary="===============7101070422955115762=="
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
--===============7101070422955115762==
Content-Type: multipart/alternative;
 boundary="------------040904050106020601070700"

This is a multi-part message in MIME format.
--------------040904050106020601070700
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/13/2020 05:26 AM, Amrit Pal Singh via USRP-users wrote:
> Hi All,
>
> I am benchmarking the following commands on X310, B210 and N200 on 
> UHD-3.14 version:
>
>  1. usrp->set_tx_freq(tune_req, 0);
>  2. usrp->set_rx_freq(tune_req, 0);
>
> I am changing the frequencies inside a for loop for 1000 and 5000 times.
> The code snippet is as follows:
>     int count = 5000;
>     uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);
>     double start = usrp->get_time_now().get_real_secs();
>     for(int a = 0; a < count; a++){
>         uhd::tune_request_t tune_req = uhd::tune_request_t(800e6 + (a *
> 1e6), 0);
>         tune_req.dsp_freq_policy = uhd::tune_request_t::POLICY_NONE;
>         tune_req.rf_freq_policy = uhd::tune_request_t::POLICY_AUTO;
>         //usrp->set_tx_freq(tune_req, 0);
>         usrp->set_rx_freq(tune_req, 0);
>     }
>     std::cout << "time:" << ((usrp->get_time_now().get_real_secs() - 
> start)/count) * 1000 << "(ms)" << std::endl;
>
> The following table summarizes the result observed with average time 
> for a single frequency hops and the hop rate as well for both Tx and Rx.
>
> X310 test 	
> 	
> 	
> 	
> No of hops 	Tx time (average) ms 	Tx Hops/second 	Rx time (average) 
> ms 	Rx Hops/second
> 1000 	0.0453756 	22038.27608 	0.0441415 	22654.41818
> 5000 	0.051013 	19602.84633 	0.0457056 	21879.15704
>
> 	
> 	
> 	
> 	
> B210 test 	
> 	
> 	
> 	
> No of hops 	Tx time (average) ms 	Tx Hops/second 	Rx time (average) 
> ms 	Rx Hops/second
> 1000 	3.34055 	299.3519031 	5.13762 	194.6426555
> 5000 	3.35529 	298.0368314 	4.94233 	202.3337171
>
> 	
> 	
> 	
> 	
> N200 test 	
> 	
> 	
> 	
> No of hops 	Tx time (average) ms 	Tx Hops/second 	Rx time (average) 
> ms 	Rx Hops/second
> 1000 	0.0530515 	18849.6084 	0.0504478 	19822.46996
> 5000 	0.0391015 	25574.46645 	0.037663 	26551.2572
>
>
> As observed, the rate is really slow for B210. I also tested using 
> another B210 and it gave similar results.
> Could anyone share any insights into these values.
>
> Thanks,
> Amrit
>
The AD9361 RF Front end used on the B2xx series isn't well-optimized for 
frequency hopping.  The driver code does it's best to reduce
   tuning times as much as it can, but this is a hardware limitation of 
the RF chip used on the B2xx series.




--------------040904050106020601070700
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/13/2020 05:26 AM, Amrit Pal Singh
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAA3PG_naMDLB52GhfcSwcr0CsU4aOooc+oQS70Lqvb+yjks7Pw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi All,
        <div><br>
        </div>
        <div>I am benchmarking the following commands on X310, B210 and
          N200 on UHD-3.14 version:</div>
        <div>
          <ol>
            <li>usrp-&gt;set_tx_freq(tune_req, 0);</li>
            <li>usrp-&gt;set_rx_freq(tune_req, 0);</li>
          </ol>
          <div>I am changing the frequencies inside a for loop for 1000
            and 5000 times.</div>
          <div>The code snippet is as follows:</div>
          <div>    int count = 5000;</div>
          <div>    uhd::usrp::multi_usrp::sptr usrp =
            uhd::usrp::multi_usrp::make(args);<br>
                double start = usrp-&gt;get_time_now().get_real_secs();<br>
                for(int a = 0; a &lt; count; a++){<br>
                    uhd::tune_request_t tune_req =
            uhd::tune_request_t(800e6 + (a *<br>
            1e6), 0);<br>
                    tune_req.dsp_freq_policy =
            uhd::tune_request_t::POLICY_NONE;<br>
                    tune_req.rf_freq_policy =
            uhd::tune_request_t::POLICY_AUTO;<br>
                    //usrp-&gt;set_tx_freq(tune_req, 0);<br>
                    usrp-&gt;set_rx_freq(tune_req, 0);<br>
                }<br>
                std::cout &lt;&lt; "time:" &lt;&lt;
            ((usrp-&gt;get_time_now().get_real_secs() - start)/count) *
            1000 &lt;&lt; "(ms)" &lt;&lt; std::endl;<br>
          </div>
          <div><br>
          </div>
          <div>The following table summarizes the result observed with
            average time for a single frequency hops and the hop rate as
            well for both Tx and Rx.</div>
        </div>
        <div><br>
        </div>
        <div>
          <table dir="ltr"
style="table-layout:fixed;font-size:10pt;font-family:Arial;width:0px;border-collapse:collapse;border:none"
            border="1" cellpadding="0" cellspacing="0">
            <colgroup><col width="100"><col width="100"><col width="100"><col
                width="100"><col width="100"></colgroup><tbody>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(0,0,0)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;font-weight:bold;text-align:center">X310
                  test</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">No of hops</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Tx time (average) ms</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Tx Hops/second</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Rx time (average) ms</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Rx Hops/second</td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">1000</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">0.0453756</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">22038.27608</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">0.0441415</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(204,204,204)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">22654.41818</td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">5000</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">0.051013</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">19602.84633</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">0.0457056</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">21879.15704</td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;font-weight:bold;text-align:center">B210
                  test</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">No of hops</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Tx time (average) ms</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Tx Hops/second</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Rx time (average) ms</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Rx Hops/second</td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">1000</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">3.34055</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">299.3519031</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">5.13762</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(204,204,204)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">194.6426555</td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">5000</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">3.35529</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">298.0368314</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">4.94233</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">202.3337171</td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;font-weight:bold;text-align:center">N200
                  test</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">No of hops</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Tx time (average) ms</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Tx Hops/second</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Rx time (average) ms</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom">Rx Hops/second</td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">1000</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">0.0530515</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">18849.6084</td>
                <td style="overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right;border:1px
                  solid rgb(204,204,204)">0.0504478</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(204,204,204)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">19822.46996</td>
              </tr>
              <tr style="height:21px">
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204) rgb(0,0,0)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">5000</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">0.0391015</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">25574.46645</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(204,204,204)
                  rgb(0,0,0);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">0.037663</td>
                <td
                  style="border-width:1px;border-style:solid;border-color:rgb(204,204,204)
                  rgb(0,0,0) rgb(0,0,0)
                  rgb(204,204,204);overflow:hidden;padding:2px
                  3px;vertical-align:bottom;text-align:right">26551.2572</td>
              </tr>
            </tbody>
          </table>
          <br>
        </div>
        <div>As observed, the rate is really slow for B210. I also
          tested using another B210 and it gave similar results. </div>
        <div>Could anyone share any insights into these values.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Amrit</div>
        <br>
      </div>
    </blockquote>
    The AD9361 RF Front end used on the B2xx series isn't well-optimized
    for frequency hopping.  The driver code does it's best to reduce<br>
      tuning times as much as it can, but this is a hardware limitation
    of the RF chip used on the B2xx series.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040904050106020601070700--


--===============7101070422955115762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7101070422955115762==--

