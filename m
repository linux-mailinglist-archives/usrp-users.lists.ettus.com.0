Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 611C79D9B48
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 17:22:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABA2E385947
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 11:22:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732638143; bh=OBiaOeIADzKCQ0i3pnhefP699KlJ4K9chDaQacNl6VI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tA0MTimincSgJLUaYU1Qz+UVApf1zhtKTGlJMOMptQzcp0EpsxYf9P0RXChLr2KRB
	 jmyxUf2Xb6R12BxozhvfUdhOLW4v+CkXrlLR9/q8alCZVPCsOzrqMkAfwEihO2fJ9T
	 buSXxqMtJEav/p1Yj3IRDe4gPFpHjIbqOiw2oqU3MWRMFsFSaaOkE9JIU1a8VuAZrA
	 BNlACdsO4bUMVfGv5T0abKdBVjbJd+Vo8Xz4Gg/ZmpoGsps0M4cR/OtyzrggrsaJug
	 oRBAWAmsEiO0kWuORzqaxvmOp1e1wNgsdkRYtupG5pyKfXU2G9R/eGwcguKfECNluO
	 FfRBQUDiwqIcQ==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A877385855
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 11:22:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PJ355l09";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7b31b66d2e3so281159485a.2
        for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 08:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732638131; x=1733242931; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U0bsVoMfFxEq/UCRlmX6xRU7/U9btL2pmadmbR8V3Vc=;
        b=PJ355l09iI5PWdfDe2fsKCLd1OkfX+NOgnd6sQeXdGxjgeyZXESUWPbE0uv5marI3d
         NbzMyPCc47uei5rVSh5mN8241+Wf40+lMPwuQIkKdQpJMMicI3lHLK/kWo9Kuna1OCen
         BeLnZh/FniaalSoeb8pKfHEWDfpZBfzaHvMUTgl1SqnL7iVB4kD6IwXrIqgin87MKSB6
         x3bByIy1UB4Vs7fHvRxVUVQ3jzxP5xmchOzPJJtLaHbWFnKkzwZjBlGHy90i4SjaLMDq
         WXotXlvCGgoOYanzF0Iywu2eULKBLLjp3HSuZEDcI/tpkKtg48SiNBaGnqCW0EhxUmcf
         d8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732638131; x=1733242931;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U0bsVoMfFxEq/UCRlmX6xRU7/U9btL2pmadmbR8V3Vc=;
        b=KLWg6DYsJSMkCl0kYzuTd8sLzvWfxRa5DIAzOhi70sot7nsxpg5DtLrNjOFMKLBwBT
         aE2thbj5h1R3YFwXqGDWifMOWKI28Rr1qfUp7uq7ndWbRiHDCV2pQ8QaqtGSNncWrkGq
         qi/NOUEIx/IfFurcMtDq743eE6NKWSDSZLXYwmsOlwYcD5AthttQ+YJtyGa3slljgnqu
         aBZ0hjCsHMIty+KUlthukNxji3BS/NHF70hV0311uiTSJ7tVKceSvFdjvhMDE7X9W/uE
         uVOxm5Cq7qSFzNwNgtcCSdweXNv3yq+I6sClmYiE+jZrYV/sveLlc1h8owKNZe1uJZFF
         GlRw==
X-Gm-Message-State: AOJu0Yye8iIqdbmsJOJA/x8lnCTpoZLwnVAVj2MoyajfXTrynY6VlXSJ
	Lxgjkt20rqleOZQZvLor527V9lU512yEtN+CC4a+5WaQayYqXBhF
X-Gm-Gg: ASbGncuF5ZUr0lApzz+KY0dzo/Ee78QFDaxFesxJbQFJAcfsttMv91/Olz4NqhvpJZm
	BXU8vrXUOA5coW/v/HwUIZU0TX3Q91ASzhLzWwhmp10kKuq0Uj6FOxtIQ3PaSv/yV8vrOF90CfC
	nxE0urtUyn6ADeTwbBId0tPgfBJBzWOE+0I41MOl8JBWzbtYoqbvx5BMbvhfG30gWliYR1wqKJ3
	Y4rXNn7PannKt1NahRyGChsLcU/QWZ5gwcK59cFAipZiPS31Jq4OdRaPKy4
X-Google-Smtp-Source: AGHT+IGo7BTjrx3wSrTI9Wma1YNTlD+xBZQ2d6DWtjSc/x6jqkIKFhFpSY/xZ/X6X0J82Bt0oXk3Cg==
X-Received: by 2002:a05:620a:4045:b0:7b1:ae66:e8cd with SMTP id af79cd13be357-7b5145b80b9mr2736070185a.44.1732638130409;
        Tue, 26 Nov 2024 08:22:10 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b513f90534sm481153785a.25.2024.11.26.08.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 08:22:09 -0800 (PST)
Message-ID: <ba50962f-2d73-425a-afc6-364cf359384e@gmail.com>
Date: Tue, 26 Nov 2024 11:21:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Houshang <houshang.azizi@accelleran.com>
References: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
 <35f6b1f4-8291-47ca-852f-b47e58aabf77@gmail.com>
 <CAO=xj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAO=xj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gmail.com>
Message-ID-Hash: YWRRO54U7YUPU6TJ2UXDRECAN2DKQ3IS
X-Message-ID-Hash: YWRRO54U7YUPU6TJ2UXDRECAN2DKQ3IS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n310 | Error: failed receiving packet. RfnocError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YWRRO54U7YUPU6TJ2UXDRECAN2DKQ3IS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8848321483971717840=="

This is a multi-part message in MIME format.
--===============8848321483971717840==
Content-Type: multipart/alternative;
 boundary="------------CvBx3jIslV9zO4KoBPN6zJQq"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CvBx3jIslV9zO4KoBPN6zJQq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/11/2024 11:10, Houshang wrote:
> Many thanks for prompt reply Marcus! Please find attached the printout=20
> for that probe command you asked for.
OK, so the next thing to do is to test your network capacity between=20
your host computer and the N310:

benchmark_rate --args=20
"type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=3D125e6"=
=20
--rx_rate 25e6 --tx_rate 25e6


>
> On Tue, 26 Nov 2024 at 16:59, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 26/11/2024 10:18, Houshang wrote:
>>     Hello
>>
>>     I have following UHD version on my server:
>>
>>     /ad@bm-super11-intel:~/houshang$ uhd_config_info --version
>>     UHD 4.7.0.0-0ubuntu1~jammy1
>>     ad@bm-super11-intel:~/houshang$ ssh root@10.10.0.100/
>>
>>     And the following UHD version on my n310:
>>
>>     /root@ni-n3xx-32000F1:~# uhd_config_info --version
>>     UHD 4.7.0.0-0-ga5ed1872
>>     root@ni-n3xx-32000F1:~# /
>>
>>     They are the same and my n310 is updated with the following file:
>>
>>     /ad@bm-super11-intel:~/houshang$ md5sum
>>     /usr/share/uhd/images/usrp_n310_fpga_HG.bit
>>     532b338d6861268c05a4fd9837ca80e5
>>     =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit
>>     ad@bm-super11-intel:~/houshang$ /
>>
>>     I am running srsRAN gNB on my server (/Commit 9d5dd742a/). A
>>     version of srs of srsRAN that is compiled with /UHD 4.7.0.0./
>>
>>
>>     Here are the error messages I get:
>>
>>     /=3D=3D=3D=3D gNB started =3D=3D=3D
>>     Type <h> to view help
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Late: 2805; Underflow: 2238; Overflow: 0;
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Late: 0; Underflow: 5; Overflow: 0;
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Late: 0; Underflow: 4; Overflow: 0;
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Late: 0; Underflow: 4; Overflow: 0;
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK.
>>     Late: 0; Underflow: 4; Overflow: 0;
>>     Error: failed receiving packet. RfnocError: OpTimeout: Control
>>     operation timed out waiting for ACK./
>>
>>
>>     And obviously it is not working with this amount of errors.
>>
>>     Can anyone help me with this please? Is it a bug in the UHD
>>     version? Or is there something I am missing here?
>>
>>     Thanks
>>     Houshang
>>
>     Try "the basics" first.
>
>     What does:
>
>     uhd_usrp_probe --args "type=3Dn3xx,product=3Dn310,addr=3D192.168.10=
.2"
>
>
>     Produce (you might have to change the addr to whatever the address
>     is of your N310).
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> --=20
>
> *Houshang Azizi*
>
> *Test Engineer*
>
> logo <https://www.accelleran.com/>
>
> *(32) 492195241*
>
> *houshang.azizi@accelleran.com <mailto:Email@accelleran.com>*
>
> *www.accelleran.com* <http://www.accelleran.com/>
>
> linkedin icon <https://www.linkedin.com/company/accelleran> twitter=20
> icon <https://twitter.com/accelleran> youtube icon=20
> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D=
1>
>

--------------CvBx3jIslV9zO4KoBPN6zJQq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/11/2024 11:10, Houshang wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Many thanks for prompt reply Marcus! Please find
        attached the printout for that probe command you asked for.<br>
      </div>
    </blockquote>
    OK, so the next thing to do is to test your network capacity between
    your host computer and the N310:<br>
    <br>
    benchmark_rate --args
    "type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=3D12=
5e6"
    --rx_rate 25e6 --tx_rate 25e6<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024 at 16:5=
9,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 26/11/2024 10:18, Houshang wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hello</div>
                <div><br>
                </div>
                <div>I have following UHD version on my server:</div>
                <br>
                <i><span style=3D"background-color:rgb(238,238,238)">ad@b=
m-super11-intel:~/houshang$
                    uhd_config_info --version<br>
                    UHD 4.7.0.0-0ubuntu1~jammy1<br>
                    ad@bm-super11-intel:~/houshang$ ssh <a
                      href=3D"mailto:root@10.10.0.100" target=3D"_blank"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">root@10.10.0.100</a=
></span></i><br>
                <br>
                And the following UHD version on my n310:<br>
                <br>
                <i><span style=3D"background-color:rgb(238,238,238)">root=
@ni-n3xx-32000F1:~#
                    uhd_config_info --version<br>
                    UHD 4.7.0.0-0-ga5ed1872<br>
                    root@ni-n3xx-32000F1:~# </span></i><br>
                <br>
                <div>They are the same and my n310 is updated with the
                  following file:</div>
                <div><br>
                </div>
                <i><span style=3D"background-color:rgb(238,238,238)">ad@b=
m-super11-intel:~/houshang$
                    md5sum /usr/share/uhd/images/usrp_n310_fpga_HG.bit<br=
>
                    532b338d6861268c05a4fd9837ca80e5
                    =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>
                    ad@bm-super11-intel:~/houshang$ </span></i><br>
                <br>
                I am running srsRAN gNB on my server (<i><span
                    style=3D"background-color:rgb(238,238,238)">Commit
                    9d5dd742a</span></i>). A version of srs of srsRAN
                that is compiled with <i><span
                    style=3D"background-color:rgb(238,238,238)">UHD
                    4.7.0.0.</span></i><br>
                <br>
                <br>
                Here are the error messages I get:<br>
                <br>
                <i><span style=3D"background-color:rgb(238,238,238)">=3D=3D=
=3D=3D
                    gNB started =3D=3D=3D<br>
                    Type &lt;h&gt; to view help<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 2805; Underflow: 2238; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 0; Underflow: 5; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 0; Underflow: 4; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 0; Underflow: 4; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 0; Underflow: 4; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.</span></i><br>
                <br>
                <br>
                And obviously it is not working with this amount of
                errors.<br>
                <br>
                Can anyone help me with this please? Is it a bug in the
                UHD version? Or is there something I am missing here?<br>
                <br>
                Thanks<br>
                Houshang<br>
              </div>
              <br>
            </blockquote>
            Try "the basics" first.<br>
            <br>
            What does:<br>
            <br>
            uhd_usrp_probe --args
            "type=3Dn3xx,product=3Dn310,addr=3D192.168.10.2"<br>
            <br>
            <br>
            Produce (you might have to change the addr to whatever the
            address is of your N310).<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
      <div><br clear=3D"all">
      </div>
      <br>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)=
">Houshang
                  Azizi</span></b><span
                style=3D"font-size:11pt;font-family:Arial,sans-serif"></s=
pan></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30=
)">Test
                  Engineer</span></b></p>
          </div>
          <a href=3D"https://www.accelleran.com/" rel=3D"noopener"
            style=3D"color:rgb(51,122,183);background-color:transparent"
            target=3D"_blank" moz-do-not-send=3D"true"><font size=3D"2"><=
img
                alt=3D"logo"
src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_NewLo=
go_NoBaseline.png"
style=3D"border: 0px; vertical-align: middle; width: 143px; height: auto;=
"
                moz-do-not-send=3D"true" width=3D"143" border=3D"0"></fon=
t></a>
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">(32)
                  492195241</span></b><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"></s=
pan></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"><b>=
<span
                    style=3D"color:black"><a
                      href=3D"mailto:Email@accelleran.com" target=3D"_bla=
nk"
                      moz-do-not-send=3D"true">houshang.azizi@accelleran.=
com</a></span></b></span></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=
=A0</span></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"><a
                  href=3D"http://www.accelleran.com/"
                  style=3D"color:rgb(17,85,204)" target=3D"_blank"
                  moz-do-not-send=3D"true"><b><span
                      style=3D"color:rgb(246,146,30)">www.accelleran.com<=
/span></b></a></span></p>
          </div>
          <p style=3D"text-align:left;margin:20px 0px"><a
              href=3D"https://www.linkedin.com/company/accelleran"
              rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"linkedin icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/ln.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0=C2=A0<a
              href=3D"https://twitter.com/accelleran" rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"twitter icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/tt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0=C2=A0<a
href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1"
              rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"youtube icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/yt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0 <br>
          </p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------CvBx3jIslV9zO4KoBPN6zJQq--

--===============8848321483971717840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8848321483971717840==--
