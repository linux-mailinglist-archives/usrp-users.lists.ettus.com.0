Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 351E41A915
	for <lists+usrp-users@lfdr.de>; Sat, 11 May 2019 20:32:54 +0200 (CEST)
Received: from [::1] (port=57338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPWng-0005ko-Rn; Sat, 11 May 2019 14:32:48 -0400
Received: from mail-lj1-f173.google.com ([209.85.208.173]:38023)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <adray0001@gmail.com>) id 1hPWn8-0005fs-5e
 for usrp-users@lists.ettus.com; Sat, 11 May 2019 14:32:44 -0400
Received: by mail-lj1-f173.google.com with SMTP id 14so7698454ljj.5
 for <usrp-users@lists.ettus.com>; Sat, 11 May 2019 11:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=WYWJVRUdO7ZQ4dYc237/oLuko9cswZi8Z7ofJnLWpeg=;
 b=qO6AShyfIXdHSh7B+hJleRUOO2m4YWkQGhC+LZ4Q1d/sRUkQOY0aMpkeM7KDmEyM+d
 uZREv7xWEKfAWJreE2+ldgWmUm6vT740/UW2XVikwDm51MDP/ls1Y+6nUrZI2Uzo1j8z
 /ct3FVutH72CZNAXdOjll/MDMq2j2I8bL8k2vwz3001EMZzNqLbOjor0/DxOF1jeEQfD
 /KDLYLleRbzcJ9EUrpt8//an7+ya+zIN27a+iM01MAUx+jCz8t146DVClbWAJgn4f8qO
 BFvqLpSV8HAk3KVpDBq74CsfsoRQtT8g3lOpf5rK1BYD8HXbJaJYL9RVBXSHpGlQ7udw
 6mow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WYWJVRUdO7ZQ4dYc237/oLuko9cswZi8Z7ofJnLWpeg=;
 b=Q2VqMxKm5Ug4EJ1e13tAiTQnrtJi1Sn5W017nYwmWLvt9YUzsFn6dusve5rzqHikbZ
 FrnOL/vd5zH9MTcIc4w3VrkITIiDO2qpc6jHiRUQ+mi/xaEB8aRtwj+9/93vTIBrIkjG
 X3AtNXQQiOify96e9jdXxoTvd3JjcpGy8OY1xq41nFYnZ83YwDoXmPh8tlelgQ2K7drU
 EwU8liVy0IsK3FRQ/msV2n4iTEUhxjrw87BQmPrqe+mUj6LegcAmz5XQMY9/THhbSbSZ
 vp+b3RxBneKEnSvnZ9GSGe38rS2WT0xAMymKeDlwwmXdO+0oKutm4KBevGezZjYBl8DD
 HL2Q==
X-Gm-Message-State: APjAAAVQj8qwi/dGaz4pVJfEYGVA8eACeqwWiZVPuh2QLL59RudNXako
 D1ozMPajSLa/Yq4m8enzOU/ivct7RTyrIurM4jWtJKRI
X-Google-Smtp-Source: APXvYqyJ8zFmrbeQ2WgKhN5TF1dCWeD/iqbcvKIV8ujGDi/IRAzSDA4gXhmqCUj3nmaqwtk/8vtcwMfp1VAf49UtijU=
X-Received: by 2002:a2e:97d8:: with SMTP id m24mr176362ljj.52.1557599492544;
 Sat, 11 May 2019 11:31:32 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 11 May 2019 21:31:21 +0300
Message-ID: <CAPRRyxuCDNGcewqw7Y6A=a-cgU8DN9s6Sbg7JVSHbuYHJBD=hA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Reading samples with b200 using num_sams_and_done
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============4386967872921549410=="
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

--===============4386967872921549410==
Content-Type: multipart/alternative; boundary="000000000000749ad20588a0e43f"

--000000000000749ad20588a0e43f
Content-Type: text/plain; charset="UTF-8"

Hello. My task is to make a broadband spectrum analyzer on the usrp b200
board. For this, the standard functions for reading samples in python are
not suitable for me. Therefore, I edited them. When reading samples using
the start_con method, I cannot specify a band greater than 5 MHz.
Therefore, I use the num_sams_and_done method. But I have problems with
him. The fact is that my frequency which I know appears in the wrong place.
For example, I generate a frequency of 910 MHz and it appears at 930 MHz
(with a bandwidth of 20 MHz). I can not understand what caused it. Here are
my reading functions in two ways. I would be extremely grateful for the
help.





def test_reciev(self,freq,bandwich):
    complex_buffs=np.array([])
    buffs = np.array([])
    result = np.empty((len([0]), self.samples), dtype=np.complex64)

    for i, freqq in enumerate(freq):

        recv_samps = 0
        #self.usrp.set_rx_rate(bandwich[i])
        k=uhd.types.TuneRequest(freqq)
        #k.args(uhd.types.device_addr("mode_n=integer"))
        self.usrp.set_rx_freq(k)
        self.stream_cmd = uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
        self.stream_cmd.stream_now = True
        self.streamer_rx.issue_stream_cmd(self.stream_cmd)
        while self.usrp.get_rx_sensor("lo_locked").to_bool() != True:
            continue

        samps = np.array([], dtype=np.complex64)
        while recv_samps < self.samples:

            samps = self.streamer_rx.recv(self.recv_buff, self.metadata_rx)
            if self.metadata_rx.error_code !=
lib.types.rx_metadata_error_code.none:
                print(self.metadata_rx.strerror())
            if samps:
                real_samps = min(self.samples - recv_samps, samps)
                result[:, recv_samps:recv_samps + real_samps] =
self.recv_buff[:, 0:real_samps]
                recv_samps += real_samps
        #print (self.usrp.get_rx_sensor('rssi'))
        #print(self.streamer_rx.get_max_num_samps())
        #while samps:
        #    samps = self.streamer_rx.recv(self.recv_buff, self.metadata_rx)


        #self.stream_cmd.time_spec = lib.types.time_spec(0)
        self.stream_cmd = lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
        self.streamer_rx.issue_stream_cmd(self.stream_cmd)

        complex_buffs=np.append(complex_buffs,result).ravel()
        #correct_result=result
        correct_result_1=result-(np.mean(result.real)+np.mean(result.imag)*1j)
        #correct_result.real=result.real-np.mean(result.real)
        #correct_result.imag = result.imag - np.mean(result.imag)

        PSD =  self.fft_test(result)


        #PSD[8188:8202]=np.mean(PSD[8180:8188])


        buffs = np.append(buffs,PSD)



    return complex_buffs,
buffs#np.append(buffs[value.samples:],buffs[:value.samples])



def test_reciev(self,freq,bandwich):
    complex_buffs=np.array([])
    buffs = np.array([])
    result = np.empty((len([0]), self.samples), dtype=np.complex64)

    for i, freqq in enumerate(freq):

        recv_samps = 0
        #self.usrp.set_rx_rate(bandwich[i])
        k=uhd.types.TuneRequest(freqq)
        #k.args(uhd.types.device_addr("mode_n=integer"))
        self.usrp.set_rx_freq(k)

        while self.usrp.get_rx_sensor("lo_locked").to_bool() != True:
            continue


        while recv_samps < self.samples:

            samps = self.streamer_rx.recv(self.recv_buff, self.metadata_rx)
            if self.metadata_rx.error_code !=
lib.types.rx_metadata_error_code.none:
                print(self.metadata_rx.strerror())
            if samps:
                real_samps = min(self.samples - recv_samps, samps)
                result[:, recv_samps:recv_samps + real_samps] =
self.recv_buff[:, 0:real_samps]
                recv_samps += real_samps
        #print (self.usrp.get_rx_sensor('rssi'))


        self.stream_cmd.time_spec = lib.types.time_spec(0)
        self.streamer_rx.issue_stream_cmd(self.stream_cmd)

        complex_buffs=np.append(complex_buffs,result).ravel()
        correct_result=result
        correct_result_1=result-(np.mean(result.real)+np.mean(result.imag)*1j)
        correct_result.real=result.real-np.mean(result.real)
        correct_result.imag = result.imag - np.mean(result.imag)

        PSD =  self.fft_test(result)


        #PSD[8188:8202]=np.mean(PSD[8180:8188])


        buffs = np.append(buffs,PSD)



    return complex_buffs,
buffs#np.append(buffs[value.samples:],buffs[:value.samples])

--000000000000749ad20588a0e43f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-text-wrap gmail-tlid-copy-target"><div=
 class=3D"gmail-result-shield-container gmail-tlid-copy-target" tabindex=3D=
"0"><span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en">He=
llo. My task is to make a broadband spectrum analyzer on the usrp b200 boar=
d. For this, the standard functions for reading samples in python are not s=
uitable for me. Therefore, I edited them. When reading samples using the st=
art_con method, I cannot specify a band greater than 5 MHz. Therefore, I us=
e the num_sams_and_done method. But I have problems with him. The fact is t=
hat my frequency which I know appears in the wrong place. For example, I ge=
nerate a frequency of 910 MHz and it appears at 930 MHz (with a bandwidth o=
f 20 MHz). I can not understand what caused it. Here are my reading functio=
ns in two ways. I would be extremely grateful for the help.</span><span cla=
ss=3D"gmail-tlid-translation-gender-indicator gmail-translation-gender-indi=
cator"></span></div></div><pre style=3D"background-color:rgb(39,40,34);colo=
r:rgb(248,248,242);font-family:&quot;DejaVu Sans Mono&quot;"><span style=3D=
"color:rgb(102,217,239);font-style:italic"><br><br><br><br>def </span><span=
 style=3D"color:rgb(166,226,46)">test_reciev</span>(<span style=3D"color:rg=
b(148,85,141)">self</span>,<span style=3D"color:rgb(253,151,31);font-style:=
italic">freq</span>,<span style=3D"color:rgb(128,128,127)">bandwich</span>)=
<span style=3D"color:rgb(249,38,114)">:<br></span><span style=3D"color:rgb(=
249,38,114)">    </span>complex_buffs<span style=3D"color:rgb(249,38,114)">=
=3D</span>np.<span style=3D"color:rgb(102,217,239)">array</span>([])<br>   =
 buffs <span style=3D"color:rgb(249,38,114)">=3D </span>np.<span style=3D"c=
olor:rgb(102,217,239)">array</span>([])<br>    result <span style=3D"color:=
rgb(249,38,114)">=3D </span>np.<span style=3D"color:rgb(102,217,239)">empty=
</span>((<span style=3D"color:rgb(102,217,239)">len</span>([<span style=3D"=
color:rgb(174,129,255)">0</span>]), <span style=3D"color:rgb(148,85,141)">s=
elf</span>.samples), <span style=3D"color:rgb(170,73,38)">dtype</span><span=
 style=3D"color:rgb(249,38,114)">=3D</span>np.complex64)<br><br>    <span s=
tyle=3D"color:rgb(102,217,239);font-style:italic">for </span>i, freqq <span=
 style=3D"color:rgb(102,217,239);font-style:italic">in </span><span style=
=3D"color:rgb(102,217,239)">enumerate</span>(<span style=3D"color:rgb(253,1=
51,31);font-style:italic">freq</span>)<span style=3D"color:rgb(249,38,114)"=
>:<br></span><span style=3D"color:rgb(249,38,114)"><br></span><span style=
=3D"color:rgb(249,38,114)">        </span>recv_samps <span style=3D"color:r=
gb(249,38,114)">=3D </span><span style=3D"color:rgb(174,129,255)">0<br></sp=
an><span style=3D"color:rgb(174,129,255)">        </span><span style=3D"col=
or:rgb(117,113,94)">#self.usrp.set_rx_rate(bandwich[i])<br></span><span sty=
le=3D"color:rgb(117,113,94)">        </span>k<span style=3D"color:rgb(249,3=
8,114)">=3D</span>uhd.types.<span style=3D"color:rgb(102,217,239)">TuneRequ=
est</span>(freqq)<br>        <span style=3D"color:rgb(117,113,94)">#k.args(=
uhd.types.device_addr(&quot;mode_n=3Dinteger&quot;))<br></span><span style=
=3D"color:rgb(117,113,94)">        </span><span style=3D"color:rgb(148,85,1=
41)">self</span>.usrp.<span style=3D"color:rgb(102,217,239)">set_rx_freq</s=
pan>(k)<br>        <span style=3D"color:rgb(148,85,141)">self</span>.stream=
_cmd <span style=3D"color:rgb(249,38,114)">=3D </span>uhd.types.<span style=
=3D"color:rgb(102,217,239)">StreamCMD</span>(uhd.types.StreamMode.start_con=
t)<br>        <span style=3D"color:rgb(148,85,141)">self</span>.stream_cmd.=
stream_now <span style=3D"color:rgb(249,38,114)">=3D </span><span style=3D"=
color:rgb(102,217,239)">True<br></span><span style=3D"color:rgb(102,217,239=
)">        </span><span style=3D"color:rgb(148,85,141)">self</span>.streame=
r_rx.<span style=3D"color:rgb(102,217,239)">issue_stream_cmd</span>(<span s=
tyle=3D"color:rgb(148,85,141)">self</span>.stream_cmd)<br>        <span sty=
le=3D"color:rgb(102,217,239);font-style:italic">while </span><span style=3D=
"color:rgb(148,85,141)">self</span>.usrp.<span style=3D"color:rgb(102,217,2=
39)">get_rx_sensor</span>(<span style=3D"color:rgb(165,194,97)">&quot;lo_lo=
cked&quot;</span>).<span style=3D"color:rgb(102,217,239)">to_bool</span>() =
<span style=3D"color:rgb(249,38,114)">!=3D </span><span style=3D"color:rgb(=
102,217,239)">True</span><span style=3D"color:rgb(249,38,114)">:<br></span>=
<span style=3D"color:rgb(249,38,114)">            </span><span style=3D"col=
or:rgb(102,217,239);font-style:italic">continue<br></span><span style=3D"co=
lor:rgb(102,217,239);font-style:italic"><br></span><span style=3D"color:rgb=
(102,217,239);font-style:italic">        </span><span style=3D"color:rgb(12=
8,128,127)">samps </span><span style=3D"color:rgb(249,38,114)">=3D </span>n=
p.<span style=3D"color:rgb(102,217,239)">array</span>([], <span style=3D"co=
lor:rgb(170,73,38)">dtype</span><span style=3D"color:rgb(249,38,114)">=3D</=
span>np.complex64)<br>        <span style=3D"color:rgb(102,217,239);font-st=
yle:italic">while </span>recv_samps <span style=3D"color:rgb(249,38,114)">&=
lt; </span><span style=3D"color:rgb(148,85,141)">self</span>.samples<span s=
tyle=3D"color:rgb(249,38,114)">:<br></span><span style=3D"color:rgb(249,38,=
114)"><br></span><span style=3D"color:rgb(249,38,114)">            </span>s=
amps <span style=3D"color:rgb(249,38,114)">=3D </span><span style=3D"color:=
rgb(148,85,141)">self</span>.streamer_rx.<span style=3D"color:rgb(102,217,2=
39)">recv</span>(<span style=3D"color:rgb(148,85,141)">self</span>.recv_buf=
f, <span style=3D"color:rgb(148,85,141)">self</span>.metadata_rx)<br>      =
      <span style=3D"color:rgb(102,217,239);font-style:italic">if </span><s=
pan style=3D"color:rgb(148,85,141)">self</span>.metadata_rx.error_code <spa=
n style=3D"color:rgb(249,38,114)">!=3D </span>lib.types.rx_metadata_error_c=
ode.none<span style=3D"color:rgb(249,38,114)">:<br></span><span style=3D"co=
lor:rgb(249,38,114)">                </span><span style=3D"color:rgb(102,21=
7,239);font-style:italic">print</span>(<span style=3D"color:rgb(148,85,141)=
">self</span>.metadata_rx.<span style=3D"color:rgb(102,217,239)">strerror</=
span>())<br>            <span style=3D"color:rgb(102,217,239);font-style:it=
alic">if </span>samps<span style=3D"color:rgb(249,38,114)">:<br></span><spa=
n style=3D"color:rgb(249,38,114)">                </span>real_samps <span s=
tyle=3D"color:rgb(249,38,114)">=3D </span><span style=3D"color:rgb(102,217,=
239)">min</span>(<span style=3D"color:rgb(148,85,141)">self</span>.samples =
<span style=3D"color:rgb(249,38,114)">- </span>recv_samps, samps)<br>      =
          result[<span style=3D"color:rgb(249,38,114)">:</span>, recv_samps=
<span style=3D"color:rgb(249,38,114)">:</span>recv_samps <span style=3D"col=
or:rgb(249,38,114)">+ </span>real_samps] <span style=3D"color:rgb(249,38,11=
4)">=3D </span><span style=3D"color:rgb(148,85,141)">self</span>.recv_buff[=
<span style=3D"color:rgb(249,38,114)">:</span>, <span style=3D"color:rgb(17=
4,129,255)">0</span><span style=3D"color:rgb(249,38,114)">:</span>real_samp=
s]<br>                recv_samps <span style=3D"color:rgb(249,38,114)">+=3D=
 </span>real_samps<br>        <span style=3D"color:rgb(117,113,94)">#print =
(self.usrp.get_rx_sensor(&#39;rssi&#39;))<br></span><span style=3D"color:rg=
b(117,113,94)">        #print(self.streamer_rx.get_max_num_samps())<br></sp=
an><span style=3D"color:rgb(117,113,94)">        #while samps:<br></span><s=
pan style=3D"color:rgb(117,113,94)">        #    samps =3D self.streamer_rx=
.recv(self.recv_buff, self.metadata_rx)<br></span><span style=3D"color:rgb(=
117,113,94)"><br></span><span style=3D"color:rgb(117,113,94)"><br></span><s=
pan style=3D"color:rgb(117,113,94)">        #self.stream_cmd.time_spec =3D =
lib.types.time_spec(0)<br></span><span style=3D"color:rgb(117,113,94)">    =
    </span><span style=3D"color:rgb(148,85,141)">self</span>.stream_cmd <sp=
an style=3D"color:rgb(249,38,114)">=3D </span>lib.types.<span style=3D"colo=
r:rgb(102,217,239)">stream_cmd</span>(lib.types.stream_mode.stop_cont)<br> =
       <span style=3D"color:rgb(148,85,141)">self</span>.streamer_rx.<span =
style=3D"color:rgb(102,217,239)">issue_stream_cmd</span>(<span style=3D"col=
or:rgb(148,85,141)">self</span>.stream_cmd)<br><br>        complex_buffs<sp=
an style=3D"color:rgb(249,38,114)">=3D</span>np.<span style=3D"color:rgb(10=
2,217,239)">append</span>(complex_buffs,result).<span style=3D"color:rgb(10=
2,217,239)">ravel</span>()<br>        <span style=3D"color:rgb(117,113,94)"=
>#correct_result=3Dresult<br></span><span style=3D"color:rgb(117,113,94)"> =
       </span><span style=3D"color:rgb(128,128,127)">correct_result_1</span=
><span style=3D"color:rgb(249,38,114)">=3D</span>result<span style=3D"color=
:rgb(249,38,114)">-</span>(np.<span style=3D"color:rgb(102,217,239)">mean</=
span>(result.real)<span style=3D"color:rgb(249,38,114)">+</span>np.<span st=
yle=3D"color:rgb(102,217,239)">mean</span>(result.imag)<span style=3D"color=
:rgb(249,38,114)">*</span><span style=3D"color:rgb(174,129,255)">1j</span>)=
<br>        <span style=3D"color:rgb(117,113,94)">#correct_result.real=3Dre=
sult.real-np.mean(result.real)<br></span><span style=3D"color:rgb(117,113,9=
4)">        #correct_result.imag =3D result.imag - np.mean(result.imag)<br>=
</span><span style=3D"color:rgb(117,113,94)"><br></span><span style=3D"colo=
r:rgb(117,113,94)">        </span>PSD <span style=3D"color:rgb(249,38,114)"=
>=3D  </span><span style=3D"color:rgb(148,85,141)">self</span>.<span style=
=3D"color:rgb(102,217,239)">fft_test</span>(result)<br><br><br>        <spa=
n style=3D"color:rgb(117,113,94)">#PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])=
<br></span><span style=3D"color:rgb(117,113,94)"><br></span><span style=3D"=
color:rgb(117,113,94)"><br></span><span style=3D"color:rgb(117,113,94)">   =
     </span>buffs <span style=3D"color:rgb(249,38,114)">=3D </span>np.<span=
 style=3D"color:rgb(102,217,239)">append</span>(buffs,PSD)<br><br><br><br> =
   <span style=3D"color:rgb(102,217,239);font-style:italic">return </span>c=
omplex_buffs, buffs<span style=3D"color:rgb(117,113,94)">#np.append(buffs[v=
alue.samples:],buffs[:value.samples])<br><br><br><br><span style=3D"color:r=
gb(102,217,239);font-style:italic">def </span><span style=3D"color:rgb(166,=
226,46)">test_reciev</span>(<span style=3D"color:rgb(148,85,141)">self</spa=
n>,<span style=3D"color:rgb(253,151,31);font-style:italic">freq</span>,<spa=
n style=3D"color:rgb(128,128,127)">bandwich</span>)<span style=3D"color:rgb=
(249,38,114)">:<br></span><span style=3D"color:rgb(249,38,114)">    </span>=
complex_buffs<span style=3D"color:rgb(249,38,114)">=3D</span>np.<span style=
=3D"color:rgb(102,217,239)">array</span>([])<br>    buffs <span style=3D"co=
lor:rgb(249,38,114)">=3D </span>np.<span style=3D"color:rgb(102,217,239)">a=
rray</span>([])<br>    result <span style=3D"color:rgb(249,38,114)">=3D </s=
pan>np.<span style=3D"color:rgb(102,217,239)">empty</span>((<span style=3D"=
color:rgb(102,217,239)">len</span>([<span style=3D"color:rgb(174,129,255)">=
0</span>]), <span style=3D"color:rgb(148,85,141)">self</span>.samples), <sp=
an style=3D"color:rgb(170,73,38)">dtype</span><span style=3D"color:rgb(249,=
38,114)">=3D</span>np.complex64)<br><br>    <span style=3D"color:rgb(102,21=
7,239);font-style:italic">for </span>i, freqq <span style=3D"color:rgb(102,=
217,239);font-style:italic">in </span><span style=3D"color:rgb(102,217,239)=
">enumerate</span>(<span style=3D"color:rgb(253,151,31);font-style:italic">=
freq</span>)<span style=3D"color:rgb(249,38,114)">:<br></span><span style=
=3D"color:rgb(249,38,114)"><br></span><span style=3D"color:rgb(249,38,114)"=
>        </span>recv_samps <span style=3D"color:rgb(249,38,114)">=3D </span=
><span style=3D"color:rgb(174,129,255)">0<br></span><span style=3D"color:rg=
b(174,129,255)">        </span><span style=3D"color:rgb(117,113,94)">#self.=
usrp.set_rx_rate(bandwich[i])<br></span><span style=3D"color:rgb(117,113,94=
)">        </span>k<span style=3D"color:rgb(249,38,114)">=3D</span>uhd.type=
s.<span style=3D"color:rgb(102,217,239)">TuneRequest</span>(freqq)<br>     =
   <span style=3D"color:rgb(117,113,94)">#k.args(uhd.types.device_addr(&quo=
t;mode_n=3Dinteger&quot;))<br></span><span style=3D"color:rgb(117,113,94)">=
        </span><span style=3D"color:rgb(148,85,141)">self</span>.usrp.<span=
 style=3D"color:rgb(102,217,239)">set_rx_freq</span>(k)<br><br>        <spa=
n style=3D"color:rgb(102,217,239);font-style:italic">while </span><span sty=
le=3D"color:rgb(148,85,141)">self</span>.usrp.<span style=3D"color:rgb(102,=
217,239)">get_rx_sensor</span>(<span style=3D"color:rgb(165,194,97)">&quot;=
lo_locked&quot;</span>).<span style=3D"color:rgb(102,217,239)">to_bool</spa=
n>() <span style=3D"color:rgb(249,38,114)">!=3D </span><span style=3D"color=
:rgb(102,217,239)">True</span><span style=3D"color:rgb(249,38,114)">:<br></=
span><span style=3D"color:rgb(249,38,114)">            </span><span style=
=3D"color:rgb(102,217,239);font-style:italic">continue<br></span><span styl=
e=3D"color:rgb(102,217,239);font-style:italic"><br></span><span style=3D"co=
lor:rgb(102,217,239);font-style:italic">       <br></span><span style=3D"co=
lor:rgb(102,217,239);font-style:italic">        while </span>recv_samps <sp=
an style=3D"color:rgb(249,38,114)">&lt; </span><span style=3D"color:rgb(148=
,85,141)">self</span>.samples<span style=3D"color:rgb(249,38,114)">:<br></s=
pan><span style=3D"color:rgb(249,38,114)"><br></span><span style=3D"color:r=
gb(249,38,114)">            </span>samps <span style=3D"color:rgb(249,38,11=
4)">=3D </span><span style=3D"color:rgb(148,85,141)">self</span>.streamer_r=
x.<span style=3D"color:rgb(102,217,239)">recv</span>(<span style=3D"color:r=
gb(148,85,141)">self</span>.recv_buff, <span style=3D"color:rgb(148,85,141)=
">self</span>.metadata_rx)<br>            <span style=3D"color:rgb(102,217,=
239);font-style:italic">if </span><span style=3D"color:rgb(148,85,141)">sel=
f</span>.metadata_rx.error_code <span style=3D"color:rgb(249,38,114)">!=3D =
</span>lib.types.rx_metadata_error_code.none<span style=3D"color:rgb(249,38=
,114)">:<br></span><span style=3D"color:rgb(249,38,114)">                </=
span><span style=3D"color:rgb(102,217,239);font-style:italic">print</span>(=
<span style=3D"color:rgb(148,85,141)">self</span>.metadata_rx.<span style=
=3D"color:rgb(102,217,239)">strerror</span>())<br>            <span style=
=3D"color:rgb(102,217,239);font-style:italic">if </span>samps<span style=3D=
"color:rgb(249,38,114)">:<br></span><span style=3D"color:rgb(249,38,114)"> =
               </span>real_samps <span style=3D"color:rgb(249,38,114)">=3D =
</span><span style=3D"color:rgb(102,217,239)">min</span>(<span style=3D"col=
or:rgb(148,85,141)">self</span>.samples <span style=3D"color:rgb(249,38,114=
)">- </span>recv_samps, samps)<br>                result[<span style=3D"col=
or:rgb(249,38,114)">:</span>, recv_samps<span style=3D"color:rgb(249,38,114=
)">:</span>recv_samps <span style=3D"color:rgb(249,38,114)">+ </span>real_s=
amps] <span style=3D"color:rgb(249,38,114)">=3D </span><span style=3D"color=
:rgb(148,85,141)">self</span>.recv_buff[<span style=3D"color:rgb(249,38,114=
)">:</span>, <span style=3D"color:rgb(174,129,255)">0</span><span style=3D"=
color:rgb(249,38,114)">:</span>real_samps]<br>                recv_samps <s=
pan style=3D"color:rgb(249,38,114)">+=3D </span>real_samps<br>        <span=
 style=3D"color:rgb(117,113,94)">#print (self.usrp.get_rx_sensor(&#39;rssi&=
#39;))<br></span><span style=3D"color:rgb(117,113,94)"><br></span><span sty=
le=3D"color:rgb(117,113,94)"><br></span><span style=3D"color:rgb(117,113,94=
)">        </span><span style=3D"color:rgb(148,85,141)">self</span>.stream_=
cmd.time_spec <span style=3D"color:rgb(249,38,114)">=3D </span>lib.types.<s=
pan style=3D"color:rgb(102,217,239)">time_spec</span>(<span style=3D"color:=
rgb(174,129,255)">0</span>)<br>        <span style=3D"color:rgb(148,85,141)=
">self</span>.streamer_rx.<span style=3D"color:rgb(102,217,239)">issue_stre=
am_cmd</span>(<span style=3D"color:rgb(148,85,141)">self</span>.stream_cmd)=
<br><br>        complex_buffs<span style=3D"color:rgb(249,38,114)">=3D</spa=
n>np.<span style=3D"color:rgb(102,217,239)">append</span>(complex_buffs,res=
ult).<span style=3D"color:rgb(102,217,239)">ravel</span>()<br>        corre=
ct_result<span style=3D"color:rgb(249,38,114)">=3D</span>result<br>        =
<span style=3D"color:rgb(128,128,127)">correct_result_1</span><span style=
=3D"color:rgb(249,38,114)">=3D</span>result<span style=3D"color:rgb(249,38,=
114)">-</span>(np.<span style=3D"color:rgb(102,217,239)">mean</span>(result=
.real)<span style=3D"color:rgb(249,38,114)">+</span>np.<span style=3D"color=
:rgb(102,217,239)">mean</span>(result.imag)<span style=3D"color:rgb(249,38,=
114)">*</span><span style=3D"color:rgb(174,129,255)">1j</span>)<br>        =
correct_result.real<span style=3D"color:rgb(249,38,114)">=3D</span>result.r=
eal<span style=3D"color:rgb(249,38,114)">-</span>np.<span style=3D"color:rg=
b(102,217,239)">mean</span>(result.real)<br>        correct_result.imag <sp=
an style=3D"color:rgb(249,38,114)">=3D </span>result.imag <span style=3D"co=
lor:rgb(249,38,114)">- </span>np.<span style=3D"color:rgb(102,217,239)">mea=
n</span>(result.imag)<br><br>        PSD <span style=3D"color:rgb(249,38,11=
4)">=3D  </span><span style=3D"color:rgb(148,85,141)">self</span>.<span sty=
le=3D"color:rgb(102,217,239)">fft_test</span>(result)<br><br><br>        <s=
pan style=3D"color:rgb(117,113,94)">#PSD[8188:8202]=3Dnp.mean(PSD[8180:8188=
])<br></span><span style=3D"color:rgb(117,113,94)"><br></span><span style=
=3D"color:rgb(117,113,94)"><br></span><span style=3D"color:rgb(117,113,94)"=
>        </span>buffs <span style=3D"color:rgb(249,38,114)">=3D </span>np.<=
span style=3D"color:rgb(102,217,239)">append</span>(buffs,PSD)<br><br><br><=
br>    <span style=3D"color:rgb(102,217,239);font-style:italic">return </sp=
an>complex_buffs, buffs<span style=3D"color:rgb(117,113,94)">#np.append(buf=
fs[value.samples:],buffs[:value.samples])<br></span><br><br><br><br><br><br=
><br><br></span></pre></div>

--000000000000749ad20588a0e43f--


--===============4386967872921549410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4386967872921549410==--

