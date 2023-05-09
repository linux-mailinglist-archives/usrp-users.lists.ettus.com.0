Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC4D6FCBDB
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 18:55:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 285E33846AA
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 12:55:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683651333; bh=lPmoNhywssYgpCdurnH/ruTFulsOcD2IfK2s+/JdQPI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Alc4/+uumxPh8h0L+sKR/5Jk/l+8ScuglF0zEBAAG8cKOCaMA1aanTcQZYIAyf4hO
	 nEPT7HomsZsPY5GZRucGEGPw324bPlM9lPmkrHoQi994T/Qbjol6RYA/rg34up4MgD
	 B2ebhaYjQwVUr0DZ4gjhQqCKU1aLiYX1XdDBqFjy8sht8kqDD3qZVqeHJS1e2rJxy7
	 p4u91ryLuN1zcEa4yTcT0+doDJqLXhOIoH0QidxSDxW3oAsH+d68viMcI4T3XzB45Q
	 8J+lk9Dh0hyc2EvqZhBevj/1/3zax56QyPgilQqgcPsfn02M0qGK+/rpf2MJNk7LS+
	 OtwEP+MyvCiQQ==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 247D73846E0
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 12:54:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VqkU2bW/";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-3f3a287ecceso2406061cf.0
        for <usrp-users@lists.ettus.com>; Tue, 09 May 2023 09:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683651256; x=1686243256;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ex6XR/wk2HL1cVKIjPgJmcrS+wThAWhy6Li6wly58c8=;
        b=VqkU2bW/hbnRSyYupSeR2ltnP9cv/M3u6Mhn4ZxCIJvaSjAedeREElXdggv45FoQGV
         YRKOC8WWh1xQPAyH+ZelySxnbtszfzRCQOZ1gv6dOu01vD35werc6xunKIb3RXh/vDCf
         KGdmtcszsw26ip0zxj+lQvZg5/7dIWA13iYZkN7P1vqcHU3TLgtYny8YGwrzDzEuN1um
         NYlO6dMaV85Y/NA+l8U4jiSvra85HqptrF1XKq2v2nwFIo2f9TbR28p2scK6/tz/r3yO
         MvjQ6hCxw3t/QMl8NXbt8vSa+Ispjyx3QmhD/F08zihZkocmnTIUj9DbGKAC+I3zW1T6
         xaPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683651256; x=1686243256;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ex6XR/wk2HL1cVKIjPgJmcrS+wThAWhy6Li6wly58c8=;
        b=ffsbvNKyS+LJ2HcsvTH4euj9BF5qMoe/+7dQLicma4uAA/zYMEUf0VugiLCL0SKZXd
         3bhKZPevNJujfRBX+g2OQCn1YOWPJTDoru29eCRtdi/55ul8nya2zPZ/0i/mmBEcJh5/
         lxFib4dyNgZipQjmQrDa6o6aGOy/nysedQ0J/AjPERwpJmtlJxPBURKRnS79AEhaUkGK
         U3BPgVjpUOFZuzqBWmm1JR3EVAAn+02t7sVDEw9no6JfGT4hJIuNM2jHHDxf3cHJae0d
         P4BYZlehnoA6Iac0KDUWudvje9F3jJzZR7H7WuPdgiK76AHUl2Sd7NL+vlQZqyloVKRE
         2bNw==
X-Gm-Message-State: AC+VfDw/6F1rjeWs/JB9gXm+TXkTxvYAFvBWJfIgfuzW1QcSdpqFqZYM
	G6LSyJdWeBU2O5Xt5fIEqsKamNrbUFg=
X-Google-Smtp-Source: ACHHUZ5nNokwu2w8vNvHQS+CpHja1VITGLHIUfI3BGxy7eWlx6DxAu9TOZaRfFXJaaNOaLEuNvo2XA==
X-Received: by 2002:a05:622a:14e:b0:3f3:669f:473c with SMTP id v14-20020a05622a014e00b003f3669f473cmr21828512qtw.49.1683651256416;
        Tue, 09 May 2023 09:54:16 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id w13-20020ac843cd000000b003ef38277445sm624747qtn.16.2023.05.09.09.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 09:54:16 -0700 (PDT)
Message-ID: <793e5594-1a4c-f5a6-c3db-f74b3e8cb711@gmail.com>
Date: Tue, 9 May 2023 12:54:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com>
 <1556054227.3356110.1683649305159@mail.yahoo.com>
 <c215628a-03a8-fd64-acb0-c16e21f82181@gmail.com>
 <494641635.3380849.1683651178051@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <494641635.3380849.1683651178051@mail.yahoo.com>
Message-ID-Hash: D7GYIQUXLUPDJ7ZOUNAKG5R6YDNSTLPX
X-Message-ID-Hash: D7GYIQUXLUPDJ7ZOUNAKG5R6YDNSTLPX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't find calibration file for X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D7GYIQUXLUPDJ7ZOUNAKG5R6YDNSTLPX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1059236687048762284=="

This is a multi-part message in MIME format.
--===============1059236687048762284==
Content-Type: multipart/alternative;
 boundary="------------WMm55h6GfA0ha5CWSTK5pg9o"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WMm55h6GfA0ha5CWSTK5pg9o
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/05/2023 12:52, zhou wrote:
> Thanks for your quick response Marcus.
>
> My Linux is server version of Ubuntu 22.04.
>
> The calibration commands I used are:
> sudo uhd_cal_tx_dc_offset=C2=A0 --verbose --args=3D"addr=3D192.168.13.2=
"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"A:0"
> sudo uhd_cal_tx_dc_offset=C2=A0 --verbose --args=3D"addr=3D192.168.13.2=
"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"B:0"
> sudo uhd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"A:0"
> sudo uhd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"B:0"
> sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"A:0"
> sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"B:0"
>
> After running these commands, it showed that calibration was successful=
:
> =C2=A0The calibration was successful!!! :-)
>
> What other place can the .cal files be saved in?
 From what I recall, UHD defers to whatever scheme your desktop=20
environment uses for
 =C2=A0 "application data" files.

Try using the find command:

find $HOME -name "*.cal" -print


>
> Thanks again.
>
>
>
> On Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 09/05/2023 12:21, zhou via USRP-users wrote:
> Hi,
>
> I installed UHD 4.4 for X310 and calibrated USRPs, but I can't find=20
> the expected .cal file under ${HOME}/.local/share/uhd/cal/. Actually,=20
> there is no ${HOME}/.local/share/uhd/ directory.
>
> What can be wrong?
>
> Thanks for any help,
> Hongwei
>
>
> It could be that your desktop environment stores local config and data=20
> files in another place.
>
> What commands did you use to create the cal files?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------WMm55h6GfA0ha5CWSTK5pg9o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/05/2023 12:52, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:494641635.3380849.1683651178051@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp7ebd1e74yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your quick
          response Marcus.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">My Linux is server version=
 of
          Ubuntu 22.04.=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">The calibration commands I
          used are:</div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>sudo uhd_cal_tx_dc_offset=C2=A0 --verbose
              --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_st=
op
              6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"A:0"<=
/div>
            <div>sudo uhd_cal_tx_dc_offset=C2=A0 --verbose
              --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_st=
op
              6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"B:0"<=
/div>
            <div>sudo uhd_cal_tx_iq_balance --verbose
              --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_st=
op
              6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"A:0"<=
/div>
            <div>sudo uhd_cal_tx_iq_balance --verbose
              --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_st=
op
              6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"B:0"<=
/div>
            <div>sudo uhd_cal_rx_iq_balance --verbose
              --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_st=
op
              6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"A:0"<=
/div>
            <div>sudo uhd_cal_rx_iq_balance --verbose
              --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_st=
op
              6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"B:0"<=
/div>
          </div>
          <div><br>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false">After running these
            commands, it showed that calibration was successful:</div>
          <div dir=3D"ltr" data-setdir=3D"false">
            <div>
              <div>=C2=A0The calibration was successful!!! :-)</div>
              <div><br>
              </div>
            </div>
          </div>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">What other place can the .=
cal
          files be saved in?</div>
      </div>
    </blockquote>
    From what I recall, UHD defers to whatever scheme your desktop
    environment uses for<br>
    =C2=A0 "application data" files.<br>
    <br>
    Try using the find command:<br>
    <br>
    find $HOME -name "*.cal" -print<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:494641635.3380849.1683651178051@mail.yahoo.com">
      <div class=3D"ydp7ebd1e74yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks again.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp3676ad2yahoo_quoted_3732052683"
        class=3D"ydp3676ad2yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbra=
un@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp3676ad2yiv3352880938">
              <div id=3D"ydp3676ad2yiv3352880938yqt92039"
                class=3D"ydp3676ad2yiv3352880938yqt9306525402">
                <div>
                  <div class=3D"ydp3676ad2yiv3352880938moz-cite-prefix">O=
n
                    09/05/2023 12:21, zhou via USRP-users wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica,
                    Arial, sans-serif;font-size:13px;"
                    class=3D"ydp3676ad2yiv3352880938ydpf691e441yahoo-styl=
e-wrap">
                    <div>Hi,</div>
                    <div><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I installed UHD 4.4 for X310 and
                      calibrated USRPs, but I can't find the expected
                      .cal file under=C2=A0<span><span style=3D"color:rgb=
(0, 0,
                          0);font-family:monospace;font-size:14px;">${HOM=
E}/.local/share/uhd/cal/.
                          Actually, there is no=C2=A0<span><span
                              style=3D"color:rgb(0, 0,
                              0);font-family:monospace;font-size:14px;">$=
{HOME}/.local/share/uhd/
                              directory.</span></span></span></span></div=
>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0,
                          0);font-family:monospace;font-size:14px;"><span=
><span
                              style=3D"color:rgb(0, 0,
                              0);font-family:monospace;font-size:14px;"><=
br
                                clear=3D"none">
                            </span></span></span></span></div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0,
                          0);font-family:monospace;font-size:14px;"><span=
><span
                              style=3D"color:rgb(0, 0,
                              0);font-family:monospace;font-size:14px;">W=
hat
                              can be wrong?</span></span></span></span></=
div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0,
                          0);font-family:monospace;font-size:14px;"><span=
><span
                              style=3D"color:rgb(0, 0,
                              0);font-family:monospace;font-size:14px;"><=
br
                                clear=3D"none">
                            </span></span></span></span></div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0,
                          0);font-family:monospace;font-size:14px;"><span=
><span
                              style=3D"color:rgb(0, 0,
                              0);font-family:monospace;font-size:14px;">T=
hanks
                              for any help,</span></span></span></span></=
div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0,
                          0);font-family:monospace;font-size:14px;"><span=
><span
                              style=3D"color:rgb(0, 0,
                              0);font-family:monospace;font-size:14px;">H=
ongwei</span></span></span></span></div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0,
                          0);font-family:monospace;font-size:14px;"><span=
><span
                              style=3D"color:rgb(0, 0,
                              0);font-family:monospace;font-size:14px;"><=
br
                                clear=3D"none">
                            </span></span></span></span></div>
                  </div>
                  <br clear=3D"none">
                  It could be that your desktop environment stores local
                  config and data files in another place.<br
                    clear=3D"none">
                  <br clear=3D"none">
                  What commands did you use to create the cal files?<br
                    clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydp3676ad2yqt9306525402" id=3D"ydp3676ad2yqt498=
13">_______________________________________________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------WMm55h6GfA0ha5CWSTK5pg9o--

--===============1059236687048762284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1059236687048762284==--
