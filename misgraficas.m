if size(u,1) == 1
    plot(t,u(1,:), 'r');
elseif size(u,1) == 2
    figure('Name', 'Componentes');
    subplot(2,1,1);
    plot(t,u(1,:), 'r');
    title('Componente 1');
    legend('u1');
    subplot(2,1,2);
    plot(t,u(2,:), 'g');
    title('Componente 2');
    legend('u2');
    pause(1)
    figure('Name', 'Trayectoria');
    plot(u(1,:), u(2,:), 'r');
    title('Trayectoria');
    legend('Trayectoria');
else
    figure('Name', 'Componentes')
    for i = 1:3
        subplot(2,1,i);
        switch i
            case 1
                plot(t, u(i,:), 'r');
            case 2
                plot(t, u(i,:), 'g');
            case 3
                plot(t, u(i,:), 'b');
        end
        title('Componente ' + i);
        legend('u' + i);
    end
    pause(1)
    figure('Name', 'Trayectoria')
    plot(u(1,:),u(2,:),u(3,:), 'r');
    title('Trayectoria');
    legend('Trayectoria');
end