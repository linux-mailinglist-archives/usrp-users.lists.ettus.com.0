Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8BC2B23AA
	for <lists+usrp-users@lfdr.de>; Fri, 13 Nov 2020 19:26:11 +0100 (CET)
Received: from [::1] (port=41804 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kddlu-000461-6C; Fri, 13 Nov 2020 13:26:06 -0500
Received: from sonic309-21.consmr.mail.ne1.yahoo.com ([66.163.184.147]:46829)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1kddlq-00040p-FR
 for usrp-users@lists.ettus.com; Fri, 13 Nov 2020 13:26:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1605291921; bh=+Qj2R+7zJBi/tRcdHCSR0rQ4MUn1nnHZPCV6ZArkipo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject;
 b=J4jOu005/RD5b6xzRHJ3fLRzZkL6uKale4ZCEePs+bNdgqt0eiS9hj5Py/uktbinh3DQTAij8C0GU89nHrn00+tpU7dAJKx1q2REMkHm01j2K0QXi0Hr8Fwzfz/xWgIqxLxXPuoKiczZx1dMey8FGN5cusFfpyovfMBHxuqplXxjzhYD2h2xtU6nxBu/Pl6nkbYcqcKtHrAiiUuAvcyfiAfniHt/dubbL7OaJ9d4FaOZdfAp0WpcEAi0hB8aRE0KRqzKigqZuJIli1bJ6IuKjEj/DVOO6Hm0TOo/WH5FKeBDVd1RHBzSDfwx8dG00h2+Mz5WS4G4E/Lho5Q9h6sEGQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1605291921; bh=CvtIAmVn+bF3otOFcp7QrEEs/o7KMzux5WQ3JBXwtgK=;
 h=Subject:To:From:Date:From:Subject;
 b=Y5tBLpdB+D0uVQdYuVJt0ykDjf6YOvNFu2+GC4WPRH1yEZtDcI8FdwauFqpAAVVEwhCNtivBQclHZKQtbEL8VrMN7wU2x1fXT9u7YqRbWpqcxOEpBr4kNJFp4xfsi3VFS/sb0JfRzFgMCgBpE1jhZwTsdPDeqXvRvLEGRWjIvoRHQLcouSiNyzKR7AvfmaNXC3I80lqt0jVbe/ToFfhv+jGm95rqAi7ZGLkphPjXKgGVrYaU+CYr4TvS5INVu8nsjncS9uMGvxwetOXQYN42dC2sdhHrPzDASlK1FbrB0i9gcvHqteh1bRASGfhbD6NY9ATAvK2k+c/b2g1/q6USrQ==
X-YMail-OSG: d3bbbtkVM1nIB8_BH66YY5OCWThripF8W65xdm1FB93rYN3p0YW_qGYVf3YTXso
 pF9R0bYLGVP7FGjkBXciSoczZh5r7f0fNAXyHBIqY4WM.1fFE5WdHI3.O8h2StCwkEbMGafD5TUP
 q1_2AD_lowAf.O8SsELIrT6aIDX2vnRQOmp0z4Po2AQOq0o.mYkhGbQAz5V62L43ii8opgJOAkf7
 JH47ly1os.XmjrEzOzvhZFUapjQAsRTc5fJetPfioqnnhvF4ztW1Tc8rm1_7pdHwb8vldDwzAz0A
 ArHizDR4eKbineK6ckUjZPwu_que1m8ISX5aBqRxwh.7dtGtzvf.ag2Whe8ZylibZDRyk1jhoNp3
 c0DPuoSovPBbAKzXA8PK8fG.lHRxPVQhWSXV1w4nNLToKzK3DOY50zb90Axj.i3ImSJlMoUEAA_F
 zU6A1xsdFfoXAQttNP0RlXSymtFeLewbOqOcdAlfh8FV47pNZdh6.fwlbx21_YWZcdsanBmARNCM
 PgZEVD86lxPewGOxuWTNj4Pnke7MB5bOyISX49zQFk1NVHKJTA4ZE6lSrM3WXl70vY3HX1IuFHat
 kCKDiuTBlh0tUyT24e.qTt7p_R6X9JgUDSG9X8_w9Vh5VuWzyQv9U6qAjLI3pHsg0rX.ugzjsG7B
 PtQd2M9qXT6WlseeOKLA.Rbsv.AEKlEHx3EgIL9qGE6_JEdEmYC9Zs1tijIjfA7ohfbraezCTLyh
 zwWxGW_ry0e_R10HH900K3MsXhmb2YrCioUk1jnrmW2oJWY1_NAY88MDnJDlm9kc.S0kP05EJRF5
 SNELXimvyR24Q8eXZ4QxT18pc9vn5KN3dx2ZN73hBrx3QZhKtfxQmzcpVxO7EwHpzljQpDxw.h9P
 oJo4qbbV8Fdxkzmy_YuHSzsO9Vza6Evz_f3QRWZmc4F1.UWS6mXK4vHTUV7p7rbCU2SR33LF8zrE
 QSoOq3l5pi.5kReyj8rjgETLSvGu_xIzSmdTQhc2Uxy5riNbw2w2ZVzUfIkUxEWSf23MKmVjaBu4
 qPJT92wIJ_rHZFvaT.xBpB4lS1ZljoaGgPYn.AGubetW8Xk7gRyGSFx2QTnHETcgt8ONuHi39Cyz
 MLfv6uZHhmuid3hQ5hjTjC78VsI_MkcB9rVSeXIxSpx2Di9lqGubS9q_hyIP33ssqgA5aleQs0VT
 sMaSp.e.jVPB.gCnhPpRJ0CiVATyHAKnU4GnmUdkbBCP3leGReCIH5Ihpch3Kl2Is56Fquey2sa9
 GYswCrbUidMqGBSma1r968fqvZrZ7rn1CDzQI9_ppLfcEcbaRelyDfJtHPAyqEQxjuIvoTZ2xtn_
 WqanAHSKyMnKuUoNttX1yC57H3ogPuc6ltvgloeBdCSKfyjgLZ4DLmoM1wB_7jbSOpbTpInbSwrq
 Nrrkq4cB287IUDjLZxL1org3miPVtG.Id9mxzQJKtWgi2ZgDp7evy4y8E_IicyQF8jJKIXfeAxxI
 xrSyt5ITo9ilBt.3nvUylvzUeWf8v97AIRnHIEodeVV.VPX78S66LWL2kwI0h1.S6IxnMsgxGDlj
 X734GOUedjyegQFIKvqr7D6ZYqNUm74kM7jTtt3G92lOIH0knGf9qEvFhBcrqoXVCWHQyvqq3UK8
 tr6Ub10ckxu8CN5SuxJ87cNjvWcWx9G3xUs9RvR2bdWddg_G_AkXHIK3Z5IlxrBixwgW4pfvVkEG
 AsDGTyLV_TOH_.MOFGheJg_9d1_wMa4HjlMBwE9WLUdIq2RtelTVzK9DjNGiDYXUj8qHTaSvjYJ6
 HbYL.qT4ciQ4ItihKUaaI_XZozDJ5Lnu4BDk3CxPpSE4wue5CaWVXOVEHpmWeZvOzo.vVMGpj6vT
 CCGdeCPAp.UFXIAkJU7hgH6inCIvByciNNICsVZcD9M4Clrc20HFk_YgO1RUUdPu_NmFRKAwkeeG
 FHp9c5uSiOD6Ymd4e_Kh2xTStqXqM9uyxkfyB.PWlQhwn1mUo.oe3cx2Ltj7Xmr54vt.IqhQfFN0
 zWIzXr0G2KHo0CewyIREZq3pRTSr2QTQCDdilFWmFIsaTKCgjW894U.RKXoHV4to_wTPnTbBRwqV
 9NsyjKfWdGRzMVEalr0VELBuQhKYj2ALLyYSt_X2tFt5P_2ps6arT8VE6PPyLKENIUOo54V8gR32
 8oYuqop1Z5jJFv7l_C88XVpSKxy4Fl79lBk6hhJ6Tg1G9j.k9wMVwJV2LeQkW.bwFkbXEHoZ1APy
 xSl6KzvhVe.0BG7uT2cLhbvcsySWFLn4X.GxioScy6IEBhLcbvWh72UolXxxTdqOlIDXDtF9ZAlV
 anAnUTJ0DOer.4Ey.sukxtWUn.cW7j4TpBYjA6aZfBid1b6JC_Bed924lM9biYQkEhFBrXhpVi1x
 0k_MWmfbTwbgeawta4ZKJ.E9s6SM5ieeDg9TwsbPmC6HcvcDaMucrBM6dHp9xdGfFqut2WNRIu9u
 ZHZh_9lSzbBpZOSpZzihk0cd52da85CDUsbZrCGKJ8GYDJQghBt8v8_DjxUal4K3A3cyNh_yJWLY
 _h95qak5nzbm3z3OR4p7_kyx3B9wKNSW46_jfeH.V8dovobMMNEK5xqlGkJ2o_3OmPFv.OzVhFsx
 Hq2sx1G0Qi9Q0O_p0HykMQPovyvvqLw9fX1nxT.TF7xNgMMiYlSx5gRKmcxFAt6HpIHd9WBAmGcS
 1vs6HFjzTxLZDuzFEjsrfIxXOZbJOtVKRAwR18Gm.Xy.h3Zp0ASBGEW4-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Fri, 13 Nov 2020 18:25:21 +0000
Received: by smtp423.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 311fd9ac3d4dc669edbcc319ee0ec1fb; 
 Fri, 13 Nov 2020 18:25:17 +0000 (UTC)
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
References: <9a4fc5b8-5c25-3a25-acf6-de2dbd816b55.ref@verizon.net>
 <9a4fc5b8-5c25-3a25-acf6-de2dbd816b55@verizon.net>
 <CAL7q81utFeW7QWX1N33h5+W-=dkFfSRzvqGC6zb03f2BRsPTeA@mail.gmail.com>
Message-ID: <0307d1eb-65ec-2be3-3d68-d844de549b09@verizon.net>
Date: Fri, 13 Nov 2020 13:25:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAL7q81utFeW7QWX1N33h5+W-=dkFfSRzvqGC6zb03f2BRsPTeA@mail.gmail.com>
Content-Language: en-US
X-Mailer: WebService/1.1.16944
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Subject: Re: [USRP-users] E310 RFNOC OOT modules
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
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============3521965343830088605=="
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
--===============3521965343830088605==
Content-Type: multipart/alternative;
 boundary="------------74B83A910162D82EF4127327"
Content-Language: en-US
Content-Length: 9878

This is a multi-part message in MIME format.
--------------74B83A910162D82EF4127327
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Jonathon,

Thanks, I found that I needed to add 
"$LOCALPREFIX/lib/python2.7/dist-packages:$PYTHONPATH" to my python path 
in order for it to see the OOT modules.

So, now I'm on to my next problem.  When I execute the python script on 
the E310 I now get another error:

[INFO] [0/Radio_0] Performing CODEC loopback test...
[INFO] [0/Radio_0] CODEC loopback test passed
Traceback (most recent call last):
   File "e310_rx_spectrum.py", line 214, in <module>
     main()
   File "e310_rx_spectrum.py", line 203, in main
     tb = top_block_cls(freq=options.freq, 
rfnoc_gain=options.rfnoc_gain, rx_gain=options.rx_gain)
   File "e310_rx_spectrum.py", line 101, in __init__
     self.tutorial_gain_0 = tutorial.gain(
AttributeError: 'module' object has no attribute 'gain'

I've seen on other posts that this has something to do with an error 
when importing the tutorial module.  Or that maybe, something needs to 
be added to a header file.  I've verified my xml files by comparing them 
with the project files downloaded from the ettus web-site as described 
by the application note AN-823 (Getting Started with RFNoC Development).

Sorry for the questions on basic operation.  If I can get a 
configuration that goes from start to finish I can expand from there to 
more complex operations.  I think the embedded E310 environment is 
making it more complicated than other environments that don't require 
cross-compilation.

Thanks,

Mike

On 11/12/20 11:44 PM, Jonathon Pendlum wrote:
> Hi Mike,
>
> The might be due to the PYTHONPATH env variable not including the 
> directory where your OOT module is installed. Try looking for a 
> directory like /usr/lib/python2/dist-packages or similar and adding 
> that to PYTHONPATH.
>
> Jonathon
>
> On Thu, Nov 12, 2020, 13:40 Mike via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     I got an error when running a gnuradio python script on the E310. 
>     The
>     python script was created on the host machine in GRC and then copied
>     (scp) over to E310.   I've done this successfully with built-in
>     modules/blocks.  Now that I've created a custom FPGA, I've
>     successfully
>     updated the XML files in the OOT RFNoC module so that the new block
>     shows up named correctly when I run "uhd_usrp_probe".
>
>     The gnuradio error happens when I try to import the new module (in
>     this
>     case "import tutorial").
>
>     root@ni-e31x:~# python e310_rx_spectrum.py
>     Traceback (most recent call last):
>        File "e310_rx_spectrum.py", line 19, in <module>
>          import tutorial
>     ImportError: No module named tutorial
>     root@ni-e31x:~#
>
>     On the host side I am able to see the new OOT module and choose
>     the new
>     block (in this case, "gain") and create the new grc block diagram.  I
>     compile the GRC diagram and then copy the python script over to
>     the E310.
>
>     I created a new "build-arm" directory in the rfnoc OOT directory (in
>     this case, "rfnoc-tutorial").  I performed a cmake, make, and install
>     similar to the other cross-compile steps with the result that I
>     see the
>     files being installed into the /e300 directory (i.e. the directory
>     that
>     is sshfs shared with the E310).  But, I still feel that something is
>     missing since the embedded version of gnuradio is unable to locate
>     the
>     new tutorial module.
>
>     Any suggestions?  I feel like I'm real close...
>
>     Thanks,
>
>     Mike
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------74B83A910162D82EF4127327
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Jonathon,</p>
    <p>Thanks, I found that I needed to add
      "$LOCALPREFIX/lib/python2.7/dist-packages:$PYTHONPATH" to my
      python path in order for it to see the OOT modules.</p>
    <p>So, now I'm on to my next problem.  When I execute the python
      script on the E310 I now get another error:</p>
    <p>[INFO] [0/Radio_0] Performing CODEC loopback test... <br>
      [INFO] [0/Radio_0] CODEC loopback test passed<br>
      Traceback (most recent call last):<br>
        File "e310_rx_spectrum.py", line 214, in &lt;module&gt;<br>
          main()<br>
        File "e310_rx_spectrum.py", line 203, in main<br>
          tb = top_block_cls(freq=options.freq,
      rfnoc_gain=options.rfnoc_gain, rx_gain=options.rx_gain)<br>
        File "e310_rx_spectrum.py", line 101, in __init__<br>
          self.tutorial_gain_0 = tutorial.gain(<br>
      AttributeError: 'module' object has no attribute 'gain'<br>
    </p>
    <p>I've seen on other posts that this has something to do with an
      error when importing the tutorial module.  Or that maybe,
      something needs to be added to a header file.  I've verified my
      xml files by comparing them with the project files downloaded from
      the ettus web-site as described by the application note AN-823
      (Getting Started with RFNoC Development).</p>
    <p>Sorry for the questions on basic operation.  If I can get a
      configuration that goes from start to finish I can expand from
      there to more complex operations.  I think the embedded E310
      environment is making it more complicated than other environments
      that don't require cross-compilation.</p>
    <p>Thanks,</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 11/12/20 11:44 PM, Jonathon Pendlum
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAL7q81utFeW7QWX1N33h5+W-=dkFfSRzvqGC6zb03f2BRsPTeA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="auto">Hi Mike,
          <div dir="auto"><br>
          </div>
          <div dir="auto">The might be due to the PYTHONPATH env
            variable not including the directory where your OOT module
            is installed. Try looking for a directory like
            /usr/lib/python2/dist-packages or similar and adding that to
            PYTHONPATH.</div>
          <div dir="auto"><br>
          </div>
          <div>Jonathon</div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Nov 12, 2020, 13:40
          Mike via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I
          got an error when running a gnuradio python script on the
          E310.  The <br>
          python script was created on the host machine in GRC and then
          copied <br>
          (scp) over to E310.   I've done this successfully with
          built-in <br>
          modules/blocks.  Now that I've created a custom FPGA, I've
          successfully <br>
          updated the XML files in the OOT RFNoC module so that the new
          block <br>
          shows up named correctly when I run "uhd_usrp_probe".<br>
          <br>
          The gnuradio error happens when I try to import the new module
          (in this <br>
          case "import tutorial").<br>
          <br>
          root@ni-e31x:~# python e310_rx_spectrum.py<br>
          Traceback (most recent call last):<br>
             File "e310_rx_spectrum.py", line 19, in &lt;module&gt;<br>
               import tutorial<br>
          ImportError: No module named tutorial<br>
          root@ni-e31x:~#<br>
          <br>
          On the host side I am able to see the new OOT module and
          choose the new <br>
          block (in this case, "gain") and create the new grc block
          diagram.  I <br>
          compile the GRC diagram and then copy the python script over
          to the E310.<br>
          <br>
          I created a new "build-arm" directory in the rfnoc OOT
          directory (in <br>
          this case, "rfnoc-tutorial").  I performed a cmake, make, and
          install <br>
          similar to the other cross-compile steps with the result that
          I see the <br>
          files being installed into the /e300 directory (i.e. the
          directory that <br>
          is sshfs shared with the E310).  But, I still feel that
          something is <br>
          missing since the embedded version of gnuradio is unable to
          locate the <br>
          new tutorial module.<br>
          <br>
          Any suggestions?  I feel like I'm real close...<br>
          <br>
          Thanks,<br>
          <br>
          Mike<br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" rel="noreferrer"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer noreferrer" target="_blank"
            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------74B83A910162D82EF4127327--


--===============3521965343830088605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3521965343830088605==--

